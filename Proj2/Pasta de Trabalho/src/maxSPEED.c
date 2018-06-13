#include <stdio.h>

#define ITER 1000000

int main() {
   register int i, k;
   register float a,b,c,d;
  // float v[ITER] = {3.0};
   
   //tipo a, b, c;

   a = 65543.0;
   b = 44311.0;

  /*
  for (i = 0; i < ITER; i++) {
     a = 2.3;
     b = 2.1/a;
     c = 1.01;
     d = 2.0;
     e=3.0;
     f=3.1;
     g=3.2;
     h=3.3;
     if(i%2==i%3)
     continue;
  }*/
  
  for (i = 0; i < ITER; i++) {
     //c = v[i];   
     c = a;
     d = b;
     
     c = a * b;
     c = a + c;
     c = c / b;
     d = a - b;
     d = d / a;
     d = d + b;
     
     d = d + c;  
  }
}
