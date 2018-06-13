#include <stdio.h>

#define ITER 100000

float v1[ITER] = {3.0};
float v2[ITER] = {6.0};
float v3[ITER] = {9.0};
float v4[ITER] = {12.0};

int main() {
  int i;
  float a, b, c, d;
  
  for (i = 0; i < ITER; i++) {
    a = v1[i];
    b = v2[i];
    c = v3[i];
    d = v4[i];
  }
}
