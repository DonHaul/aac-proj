#include <stdio.h>
#include <stdlib.h>

#define SIZE 100000
void main ()
{

int arr[SIZE];

int i;
for (i = 0; i < SIZE; i++) {
    arr[i] = rand();
    //printf("%d\n",arr[i]);
}

int n=0;
//loop grande sem dependencias

for(n = 2; n < SIZE; n++)
{
arr[n]=arr[n-1]/arr[n-2]+1;
//o mais um previne dividir por zero na proxima iteracao
}


return;
}

