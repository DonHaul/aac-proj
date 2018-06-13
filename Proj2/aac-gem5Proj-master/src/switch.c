#include <stdio.h>
int main()
{
FILE *f = fopen("megaswitch.c", "w");
if (f == NULL)
{
    printf("Error opening file!\n");
    exit(1);
}


int n=0;
int i=1;
  fprintf(f,"void bigswitch(int n) {\n    switch (n) {");
for (i; i<100000; ++i) {
    fprintf(f,"        case %d: n += %d;\n", n, n+i/2);
}
fprintf(f,"    }\n    return n;}\n");
  
  
  fclose(f);
   return 0;
}

