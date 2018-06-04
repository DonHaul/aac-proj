#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#include <cuda_runtime.h>

#define GET_TIME(X, Y) (((Y).tv_sec - (X).tv_sec) + ((Y).tv_nsec - (X).tv_nsec) / 1000000000.0)

  __constant__ float cb_d;

  __global__ void ezCalc(float *ez, float *hx, float *hy) {
    int IE = blockDim.x;
    int JE = IE;
    int i = threadIdx.x;
    int j = blockIdx.x;
    float cb = cb_d;
    //int index = threadIdx.x + blockIdx.x * blockDim.x;

    if (j == 0) { // at x=0
      if (i == 0 || i == IE - 1) // at x=0,y=0
        ez[j * IE + i] = 0.0;
      else
        ez[j * IE + i] = ez[j * IE + i] + cb * (hy[j * IE + i] - hy[j * IE + (i - 1)] + hx[(j - 1 + JE) * IE + i] - hx[j * IE + i]);
    } else if (j < JE) {
      if (i == 0 || i == IE - 1)
        ez[j * IE + i] = 0.0;
      else
        ez[j * IE + i] = ez[j * IE + i] + cb * (hy[j * IE + i] - hy[j * IE + (i - 1)] + hx[(j - 1) * IE + i] - hx[j * IE + i]);
    }
  }

  int main(int argc, char * argv[]) {

    int IE, JE, nsteps;
    int i, j, n, is, jc, y, k;
    int xstart;
    float pi = 3.141592653589793238462643;
    float * ez_h, * hx_h, * hy_h;
    float * ez_d, * hx_d, * hy_d;
    float dx, dt, epsz, mu, courant, cb, db, c, x, t, lambda, freq;
    int tStart, tTotal;

    FILE * fp;

    //ta mal provavelmoente
    dim3 block_config(IE,1,1);
    dim3 grid_config(1,JE,1);



    if (argc != 4) {
      printf("Invalid arguments... please type:\n");
      printf("   %s  IE JE steps\n", argv[0]);
      exit(0);
    }

    IE = atoi(argv[1]);
    JE = atoi(argv[2]);
    nsteps = atoi(argv[3]);

    printf("Running 2D FDTD algorithm with matrix of size %d x %d (%d steps)\n", IE, JE, nsteps);
    int size = IE * JE;

    struct timespec Begin, Step1, Step2, End;
    double diff, accum;

    is = 10;

    epsz = 8.854e-12;
    mu = 4.0 * pi * 1.0e-7;
    c = 3.0e8;

    courant = 0.5;
    dx = 0.001;
    dt = (courant * dx) / (sqrt(2) * c);

    cb = dt / (epsz * dx);
    db = dt / (mu * dx);

    printf("Coefficients are: dt=%g cb=%g db=%g\n", dt, cb, db);

    ez_h = (float * ) calloc(size, sizeof(float));
    hx_h = (float * ) calloc(size, sizeof(float));
    hy_h = (float * ) calloc(size, sizeof(float));

    // Init device and allocate memory
    if (cudaSetDevice(0) != cudaSuccess) { perror("CANNOT SET DEVICE"); }
    if (cudaMalloc((void **) &ez_d, size * sizeof(float))) { perror("CANNOT MALLOC"); }
    if (cudaMalloc((void **) &hx_d, size * sizeof(float))) { perror("CANNOT MALLOC"); }
    if (cudaMalloc((void **) &hy_d, size * sizeof(float))) { perror("CANNOT MALLOC"); }

    freq = 50e9;

    cudaMemcpyToSymbol(cb_d, &cb, sizeof(float));

    accum = 0.0;
    for (n = 0; n < nsteps; n++) { // TIME
      if (clock_gettime(CLOCK_REALTIME, &Begin) == -1) {
        perror("Error in gettime");
        exit(1);
      }

      // Copy matrices to device
      cudaMemcpy(ez_d, ez_h, size, cudaMemcpyHostToDevice);
      cudaMemcpy(hx_d, hx_h, size, cudaMemcpyHostToDevice);
      cudaMemcpy(hy_d, hy_h, size, cudaMemcpyHostToDevice);

      /* Lauch ez calculation kernel
         JE blocks, one for each matrix line, and IE threads per block,
         one for each matrix element
       */

      ezCalc<<<JE, IE>>>(ez_d, hx_d, hy_d);

      // Copy ez matrix to host
      cudaMemcpy(ez_h, ez_d, size, cudaMemcpyDeviceToHost);

      clock_gettime(CLOCK_REALTIME, &Step1);

      for (j = 0; j < JE; j++) { // x dimension
        ez_h[j * IE + is] = cos(2 * pi * freq * n * dt);
      }

      clock_gettime(CLOCK_REALTIME, &Step2);

      //Calculate the H field
      for (j = 0; j < JE; j++) {
        for (i = 0; i < IE; i++) { // y dimension
          // Periodic Boundary implementation
          if (j + 1 == JE)
            hx_h[j * IE + i] = hx_h[j * IE + i] + db * (ez_h[j * IE + i] - ez_h[i]);
          else
            hx_h[j * IE + i] = hx_h[j * IE + i] + db * (ez_h[j * IE + i] - ez_h[(j + 1) * JE + i]);

          if (i == IE - 1)
            hy_h[j * JE + i] = hy_h[j * JE + i] + db * (0 - ez_h[j * JE + i]);
          else
            hy_h[j * JE + i] = hy_h[j * JE + i] + db * (ez_h[j * JE + (i + 1)] - ez_h[j * JE + i]);
        }
      } //Hx calculation

      if (clock_gettime(CLOCK_REALTIME, &End) == -1) {
        perror("Error in gettime");
        exit(1);
      }

      diff = GET_TIME(Begin, End);
      accum += diff;

      printf("\n====Iteration (%d)====", n);
      printf("\n======Total time: (%f)====", diff);
      printf("\n======Part 1: (%f)====", GET_TIME(Begin, Step1));
      printf("\n======Part 2: (%f)====", GET_TIME(Step1, Step2));
      printf("\n======Part 3: (%f)====", GET_TIME(Step2, End));
    }

    printf("\n\n====Total time: %f\n", accum);

    // write output to file
    fp = fopen("output_gpu_v1.txt", "w");
    fprintf(fp, "==================== Ez MATRIX ========================\n");
    for (i = 0, j = 0;
      (i < IE * JE) && (i < 1000); i++, j++) {
      if (j == 8) {
        fprintf(fp, "\n");
        j = 0;
      }
      fprintf(fp, "%8f  ", ez_h[i]);
    }
    fprintf(fp, "==================== Hx MATRIX ========================\n");
    for (i = 0, j = 0;
      (i < IE * JE) && (i < 1000); i++, j++) {
      if (j == 8) {
        fprintf(fp, "\n");
        j = 0;
      }
      fprintf(fp, "%8f  ", hx_h[i]);
    }
    fprintf(fp, "==================== Hy MATRIX ========================\n");
    for (i = 0, j = 0;
      (i < IE * JE) && (i < 1000); i++, j++) {
      if (j == 8) {
        fprintf(fp, "\n");
        j = 0;
      }
      fprintf(fp, "%8f  ", hy_h[i]);
    }

    fclose(fp);

    // Cleanup
    free(ez_h);
    free(hy_h);
    free(hx_h);
    cudaFree(ez_d);
    cudaFree(hy_d);
    cudaFree(hx_d);

    return 0;

  }
