#include <stdio.h>

#define ITER 10000

double v[ITER] = {3.0};

int main() {
  int i;
  double a, b, c;

  for (i = 0; i < ITER; i++) {
    a = v[i];

    a = a * a;
    b = (double) i * 10.0;
    c = b / a;
    c = c - 2.24;

    v[i] = c;
  }
}
