#include<lpc214x.h>
void delay1()
{
    T0MR0 = 3000000;
    T0MCR = 0x00000004;
    T0TCR = 1;
    while(T0TC != T0MR0);
    T0TC = 0;
}
int main()
{
    IODIR0 = 0xFFFF;
    while(1)
    {
        IOSET0 = 0xFFFF;
        delay1();
        IOCLR0 = 0xFFFF;
        delay1();
    }
    return (0);
}