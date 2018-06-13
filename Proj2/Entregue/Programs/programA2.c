#include <stdio.h>
#define ITER_OUT 1000000.0
#define ITER_IN 10

int main() {
   register int i;
   register float j;
  
   for (j = 0; j < ITER_OUT; j+=1.0) {
      for (i = 0; i < ITER_IN; i+=1);
   }

}
