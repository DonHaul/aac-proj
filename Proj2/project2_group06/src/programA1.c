
#define ITER 200000

int main()
{
int i;

float f0 = 3.1415;
float f1 = 3.1415;
float f2 = 3.1415;
float f3 = 3.1415;
float f4 = 3.1415;
float f5 = 3.1415;
float f6 = 3.1415;
float f7 = 3.1415;
float f8 = 3.1415;
float f9 = 3.1415;

int i1, i2, i3, i4, i5, i6;

float vec[7] = {7.2};

  for (i = 0; i<ITER; i++) {
     i1 = 25;
     vec[1]=2.0+3.0*f0;
     vec[1]=2.0+3.0*f1;
     i6 = i1 ^ 3;
     i2 = i6 - 2;
     vec[2]=2.0+3.0*f2;
     vec[2]=2.0+3.0*f3;
     i2 = i6 * 23;
     vec[3]=2.0+3.0*f4;
     vec[3]=2.0+3.0*f5;
     i3 = i2 / i1;
     vec[4]=2.0+3.0*f6;
     vec[4]=2.0+3.0*f7;
     i4 = i3 - i1;
     vec[5]=2.0+3.0*f8;
     vec[5]=2.0+3.0*f1;
     i5 = 3212 % i4;
     vec[6]=2.0+3.0*f0;
     vec[6]=2.0+3.0*f1/vec[2]-vec[1];
  }
}
