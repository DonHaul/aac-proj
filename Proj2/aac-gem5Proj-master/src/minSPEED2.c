#include <stdio.h>
#include <unistd.h>
#define ITER 100000

float v1[ITER] = {3.0};
float v2[ITER] = {6.0};
float v3[ITER] = {9.0};
float v4[ITER] = {12.0};
float v5[ITER] = {12.0};;

int main() {
  int i;
  register int j;
  float a, b, c, d;

  /*for (i = 3; i < ITER; i++) {

    if (i % 2) {
      v1[i] = v1[i-3] * v2[i-2];
      v1[i-1] = v1[i] / v2[i-3];
      v2[i-3] = v1[i] + v2[i-1];
    } else {
      v2[i] = v2[i-3] + v1[i-2];
      v2[i-1] = v2[i] * v1[i-3];
      v1[i-3] = v2[i] / v1[i-1];
    }
  }*/
  
  /*
    for (i = 100; i < ITER; i+=5) {

    v1=v1[i-1]+v1[i-2]+v1[i-3]+v1[i-4]+v1[i-5]+v1[i-6]+v1[i-7]*v1[i-8]+v1[i-9]+v1[i-10]*v1[i-11]+v1[i-12]+v1[i-13]/v1[i-14]+v1[i-15]+v1[i-16]/v1[i-17];
  }
  */


  for (i = 0; i < ITER; i++) {

    a = v1[i];
    b = v2[i];
    c = v3[i];
    d = v4[i];
  

     }
}
