#include <stdio.h>

#define SIZE 100000
void main ()
{

int i[SIZE]={ 10 };

int n=0;
//loop grande sem dependencias

for(n = 1; n < SIZE; n++)
{
i[n]=i[n-1];
}


return;
}

