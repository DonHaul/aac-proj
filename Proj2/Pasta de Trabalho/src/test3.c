#include <stdio.h>

#define SIZE 100000
void main ()
{

  float V[SIZE] = { 10 };
  
  int n, l;
  //loop grande sem dependencias
  
  for(n = 1; n < SIZE; n++) {
    V[n]=n;
    
    if(n%8)
    V[n]=V[n-1]*V[n-2]+V[n-3]*V[n-4]+V[n-4]*V[n-5]+V[n-6];
    
    
  }
  
  
  return;
}