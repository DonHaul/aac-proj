#include <stdio.h>

int main() {
  int r1, r2, r3;
  double f0, f1, f2;      

  f1 = 0.0;

  while (f1 < 10000.0) {
    f2 = 1.0;
    f0 = 0.9;

    f2 = (f2-f0)*f0;
    f0 = f2/9.0;
    f2 = f2 - f0;

    f1 += f2;     
  }
}
