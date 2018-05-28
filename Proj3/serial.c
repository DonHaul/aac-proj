#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define GET_TIME(X, Y) (((Y).tv_sec - (X).tv_sec) + ((Y).tv_nsec - (X).tv_nsec) / 1000000000.0)

  int main(int argc, char * argv[]) {

    int IE, JE, nsteps;
    int i, j, n, is, jc, y, k;
    int xstart;
    float pi = 3.141592653589793238462643;
    float * ez, * hx, * hy;
    float dx, dt, epsz, mu, courant, cb, db, c, x, t, lambda, freq;
    int tStart, tTotal;

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

    ez = (float * ) calloc(IE * JE, sizeof(float));
    hx = (float * ) calloc(IE * JE, sizeof(float));
    hy = (float * ) calloc(IE * JE, sizeof(float));

    freq = 50e9;

    accum = 0.0;
    for (n = 0; n < nsteps; n++) { // TIME
      if (clock_gettime(CLOCK_REALTIME, &Begin) == -1) {
        perror("Error in gettime");
        exit(1);
      }

      //Calculate the Ez field
      for (j = 0; j < JE; j++) { // x dimension
        for (i = 0; i < IE; i++) { // y dimension
          if (j == 0) { // at x=0
            if (i == 0 || i == IE - 1) // at x=0,y=0
              ez[j * IE + i] = 0.0;
            else
              ez[j * IE + i] = ez[j * IE + i] + cb * (hy[j * IE + i] - hy[j * IE + (i - 1)] + hx[(j - 1 + JE) * IE + i] - hx[j * IE + i]);
          } else {
            if (i == 0 || i == IE - 1)
              ez[j * IE + i] = 0.0;
            else
              ez[j * IE + i] = ez[j * IE + i] + cb * (hy[j * IE + i] - hy[j * IE + (i - 1)] + hx[(j - 1) * IE + i] - hx[j * IE + i]);
          }
        }
      } // Ez calculation

      clock_gettime(CLOCK_REALTIME, &Step1);

      for (j = 0; j < JE; j++) { // x dimension
        ez[j * IE + is] = cos(2 * pi * freq * n * dt);
      }

      clock_gettime(CLOCK_REALTIME, &Step2);

      //Calculate the H field
      for (j = 0; j < JE; j++) {
        for (i = 0; i < IE; i++) { // y dimension
          // Periodic Boundary implementation
          if (j + 1 == JE)
            hx[j * IE + i] = hx[j * IE + i] + db * (ez[j * IE + i] - ez[i]);
          else
            hx[j * IE + i] = hx[j * IE + i] + db * (ez[j * IE + i] - ez[(j + 1) * JE + i]);

          if (i == IE - 1)
            hy[j * JE + i] = hy[j * JE + i] + db * (0 - ez[j * JE + i]);
          else
            hy[j * JE + i] = hy[j * JE + i] + db * (ez[j * JE + (i + 1)] - ez[j * JE + i]);
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
    fp = fopen("output.txt", "w");
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

    return 0;

  }
