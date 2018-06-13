#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define GET_TIME(X, Y) (((Y).tv_sec - (X).tv_sec) + ((Y).tv_nsec - (X).tv_nsec) / 1000000000.0)
#define THREADS_PER_BLOCK 1024

  __constant__ __device__ int IE_d;
  __constant__ __device__ int JE_d;
  __constant__ __device__ float cb_d;
  __constant__ __device__ int is_d;
  __constant__ __device__ float pi_d;
  __constant__ __device__ float freq_d;
  __constant__ __device__ float dt_d;
  __constant__ __device__ float db_d;

  __global__ void ezCalc ( float *ez, float *hx, float *hy ) {
    int i, j = blockIdx.x;

    for (i = threadIdx.x; i < IE_d; i += blockDim.x) {

      if (i == 0 || i == IE_d - 1)
        ez[j * IE_d + i] = 0.0;

      if (j != 0 && !(i == 0 || i == IE_d - 1)) { // at x=0
        ez[j * IE_d + i] = ez[j * IE_d + i] + cb_d * (hy[j * IE_d + i] - hy[j * IE_d + (i - 1)] + hx[(j - 1 + JE_d) * IE_d + i] - hx[j * IE_d + i]);
      } else if (!(i == 0 || i == IE_d - 1))
        ez[j * IE_d + i] = ez[j * IE_d + i] + cb_d * (hy[j * IE_d + i] - hy[j * IE_d + (i - 1)] + hx[(j - 1) * IE_d + i] - hx[j * IE_d + i]);
      }
    }

  

  __global__ void ezCalc2 ( float *ez , int n ) {
    int j;

    for (j = threadIdx.x; j < JE_d; j += blockDim.x) {
      ez[j * IE_d + is_d] = cos(2 * pi_d * freq_d * n * dt_d);
    }

  }

  __global__ void hCalc ( float *ez, float *hx, float *hy ) {
    int i, j = blockIdx.x;

    for (i = threadIdx.x; i < IE_d; i += blockDim.x) {
      if (j + 1 == JE_d)
        hx[j * IE_d + i] = hx[j * IE_d + i] + db_d * (ez[j * IE_d + i] - ez[i]);
      else
        hx[j * IE_d + i] = hx[j * IE_d + i] + db_d * (ez[j * IE_d + i] - ez[(j + 1) * JE_d + i]);

      if (i == IE_d - 1)
        hy[j * JE_d + i] = hy[j * JE_d + i] + db_d * (0 - ez[j * JE_d + i]);
      else
        hy[j * JE_d + i] = hy[j * JE_d + i] + db_d * (ez[j * JE_d + (i + 1)] - ez[j * JE_d + i]);
    }


  }

  int main(int argc, char * argv[]) {

    int IE, JE, nsteps;
    int i, j, n, is;
    float pi = 3.141592653589793238462643;
    float * ez, * hx, * hy;
    float * ez_d, *hx_d, * hy_d;
    float dx, dt, epsz, mu, courant, cb, db, c, freq;
    int size;
    struct timespec Begin, Step0, Step1, Step2, Step3, End;
    FILE * fp;

    if (argc != 4) {
      printf("Invalid arguments... please type:\n");
      printf("   %s  IE JE steps\n", argv[0]);
      exit(0);
    }

    IE = atoi(argv[1]);
    JE = atoi(argv[2]);
    nsteps = atoi(argv[3]);

    printf("Running 2D FDTD algorithm with matrix of size %d x %d (%d steps)\n", IE, JE, nsteps);

    cudaMemcpyToSymbol(pi_d, &pi, sizeof(float), 0, cudaMemcpyHostToDevice);

    is = 10;
    cudaMemcpyToSymbol(is_d, &is, sizeof(int), 0, cudaMemcpyHostToDevice);

    epsz = 8.854e-12;
    mu = 4.0 * pi * 1.0e-7;
    c = 3.0e8;

    courant = 0.5;
    dx = 0.001;
    dt = (courant * dx) / (sqrt(2) * c);
    cudaMemcpyToSymbol(dt_d, &dt, sizeof(float), 0, cudaMemcpyHostToDevice);

    cb = dt / (epsz * dx);
    db = dt / (mu * dx);
    cudaMemcpyToSymbol(cb_d, &cb, sizeof(float), 0, cudaMemcpyHostToDevice);
    cudaMemcpyToSymbol(db_d, &db, sizeof(float), 0, cudaMemcpyHostToDevice);

    printf("Coefficients are: dt=%g cb=%g db=%g\n", dt, cb, db);

    size = IE * JE;

    ez = (float * ) calloc(size, sizeof(float));
    hx = (float * ) calloc(size, sizeof(float));
    hy = (float * ) calloc(size, sizeof(float));

    cudaMalloc( (void **) &ez_d, size * sizeof(float));
    cudaMalloc( (void **) &hx_d, size * sizeof(float));
    cudaMalloc( (void **) &hy_d, size * sizeof(float));

    freq = 50e9;
    cudaMemcpyToSymbol(freq_d, &freq, sizeof(float), 0, cudaMemcpyHostToDevice);

    cudaMemcpyToSymbol(JE_d, &JE, sizeof(float), 0, cudaMemcpyHostToDevice);
    cudaMemcpyToSymbol(IE_d, &IE, sizeof(float), 0, cudaMemcpyHostToDevice);

    if (clock_gettime(CLOCK_REALTIME, &Begin) == -1) {
      perror("Error in gettime");
      exit(1);
    }

    // Transfer initial matrices to gpu
    cudaMemcpy( ez_d, ez, size * sizeof(float), cudaMemcpyHostToDevice );
    cudaMemcpy( hx_d, hx, size * sizeof(float), cudaMemcpyHostToDevice );
    cudaMemcpy( hy_d, hy, size * sizeof(float), cudaMemcpyHostToDevice );

    for (n = 0; n < nsteps; n++) { // TIME
      if (clock_gettime(CLOCK_REALTIME, &Step0) == -1) {
        perror("Error in gettime");
        exit(1);
      }

      //Calculate the Ez field
      ezCalc<<<JE, THREADS_PER_BLOCK>>>( ez_d, hx_d, hy_d );

      clock_gettime(CLOCK_REALTIME, &Step1);

      //Ez field generator (line)
      ezCalc2<<<1, THREADS_PER_BLOCK>>>( ez_d , n );

      clock_gettime(CLOCK_REALTIME, &Step2);

      //Calculate the H field
      hCalc<<<JE, THREADS_PER_BLOCK>>>( ez_d, hx_d, hy_d );

      if (clock_gettime(CLOCK_REALTIME, &Step3) == -1) {
        perror("Error in gettime");
        exit(1);
      }

    }

    // Retrieve matrices from gpu
    cudaMemcpy( ez, ez_d, size * sizeof(float), cudaMemcpyDeviceToHost );
    cudaMemcpy( hx, hx_d, size * sizeof(float), cudaMemcpyDeviceToHost );
    cudaMemcpy( hy, hy_d, size * sizeof(float), cudaMemcpyDeviceToHost );

    if (clock_gettime(CLOCK_REALTIME, &End) == -1) {
      perror("Error in gettime");
      exit(1);
    }

    printf("\n\n====Total time: %f\n", GET_TIME(Begin, End));

    // write output to file
    fp = fopen("output_gpu_v4.txt", "w");
    fprintf(fp, "==================== Ez MATRIX ========================\n");
    for (i = 0, j = 0;
      (i < IE * JE) && (i < 1000); i++, j++) {
      if (j == 8) {
        fprintf(fp, "\n");
        j = 0;
      }
      fprintf(fp, "%8f  ", ez[i]);
    }
    fprintf(fp, "==================== Hx MATRIX ========================\n");
    for (i = 0, j = 0;
      (i < IE * JE) && (i < 1000); i++, j++) {
      if (j == 8) {
        fprintf(fp, "\n");
        j = 0;
      }
      fprintf(fp, "%8f  ", hx[i]);
    }
    fprintf(fp, "==================== Hy MATRIX ========================\n");
    for (i = 0, j = 0;
      (i < IE * JE) && (i < 1000); i++, j++) {
      if (j == 8) {
        fprintf(fp, "\n");
        j = 0;
      }
      fprintf(fp, "%8f  ", hy[i]);
    }

    free(ez);
    free(hy);
    free(hx);

    cudaFree( ez_d );
    cudaFree( hx_d );
    cudaFree( hy_d );

    return 0;

  }
