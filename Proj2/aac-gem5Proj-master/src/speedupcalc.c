#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>


int main (int argc, char **argv) {
   FILE *fp1;
   FILE *fp2;
   char str[200];
   char strVal[200];
   float val1;
   float val2;
   
   char filename[100];
   int i;
    
    if(argc<2)
    {
    return(-1);
    }


strcpy(filename,  argv[1]);
strcat(filename,"_inorder.txt");



if( access( filename, F_OK ) == -1 )
return -1;

   /* opening file for reading */
   fp1 = fopen(filename , "r");
   if(fp1 == NULL) {
      perror("Error opening file");
      return(-1);
   }
fgets (str, 10000, fp1);
fgets (str, 10000, fp1);
fgets (str, 10000, fp1);

sscanf( str, "%*s %s" , &strVal );
val1=atof(strVal);
//printf("O tempo é: %f",val1);
//printf("\n");
   fclose(fp1);
   
   
   
strcpy(filename,  argv[1]);
strcat(filename,"_outoforder.txt");
   
   if( access( filename, F_OK ) == -1 )
return -1;
   
   fp2 = fopen(filename , "r");
   if(fp2 == NULL) {
      perror("Error opening file");
      return(-1);
   }
fgets (str, 10000, fp2);
fgets (str, 10000, fp2);
fgets (str, 10000, fp2);

sscanf( str, "%*s %s" , &strVal );
val2=atof(strVal);
//printf("O tempo é: %f",val2);
   fclose(fp2);
   
   
   printf("%s\n\t\tSpeedUp: %f\tinorder: %f\toutoforder: %f\n",argv[1],val1/val2,val1,val2);
   
   return(0);
   
}