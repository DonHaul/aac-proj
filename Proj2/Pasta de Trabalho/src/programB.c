#include <stdio.h>
#include <unistd.h>
#define ITER 1000000

float v0[ITER] = {3.0};
float v1[ITER] = {6.0};
float v2[ITER] = {9.0};
float v3[ITER] = {12.0};

int main() {
   int i;
   float f0, f1, f2, f3;

   for (i = 0; i < ITER; i++) {
      f0 = v0[i];
      f1 = v1[i];
      f2 = v2[i];
      f3 = v3[i]; 
   }

}
