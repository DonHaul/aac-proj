#include <stdio.h>
#include <stdlib.h>

#define SIZE 100000
void main ()
{

  float f1, f2, f3, f4;
  int i1, i2, i3, i4;
  float vec[SIZE]= {32.0};
  int n, l;
  //loop grande sem dependencias
  
  for(n = 1; n < SIZE; n++) {
    
    vec[n] = vec[n-1];
      
    f1 = n;
    f2 = vec[n];
    f3 = f1 * f2;
    f4 = f3 / n;
  }
    
  return;
}