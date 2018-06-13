#include <stdio.h>

#define ITER 100000

int main() {
   int i, k, r;
   float a,b,c,d;

   
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

  k = 0;
  
  for (i = 0; (i < ITER && k >= 0); i++) {
     //c = v[i];   
     /*
     c = a;
     d = b;
     
     c = a * b;
     c = a + c;
     c = c / b; 
     
     d = c;
     
     d = a - b;
     d = d / a;
     d = d + b;
     
     a = d;
     */

     k = (int) ((a*33.5)/(b-34.2)+4.5);
     k = (int) ((b*24.2)/(a-33.1)+2.1);
     
  }
}
