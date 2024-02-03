#include<lpc214x.h>
void adc_z()
{
    PINSEL1 |= 0x01000000;
}
int adc()
{
    int i;
    AD0CR = 0x00200400 | (1<<1);
    AD0CR |= 0x01000000;
    while((AD0STAT & 0x00010002) == 0);
    i = AD0DR1;
    return i;
}
int main()
{
    int dig = 0;
    adc_z();
    IODIR0 = 0x00FF0000;
    while(1)
    {
        dig = adc();
        dig &= 0x0000FFFF;
    }
    return (0);
}