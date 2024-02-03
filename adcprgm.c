#include<lpc214x.h>
void main()
{
PINSEL1 = 0x04000000;
AD0CR |= 0x00000004;
AD0CR |= 0x00010000;
AD0CR |= 0x00200000;
while(1)
{
AD0CR |= 0x01000000;
}
}