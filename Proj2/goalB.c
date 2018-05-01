#include <stdio.h>

#define ITER 10000

double v[ITER] = {3.0};

int main() {
  int i;

  for (i = 3; i < ITER; i++) {

    if (i % 2) {
      v[i] = v[i-3] * v[i-2];
      v[i-1] = v[i] / v[i-3];
      v[i-3] = v[i] + v[i-1];
    } else {
      v[i] = v[i-3] + v[i-2];
      v[i-1] = v[i] * v[i-3];
      v[i-3] = v[i] / v[i-1];
    }
  }
}
