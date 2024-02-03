#include<lpc214x.h>
void delay1()
{
    T0MR0 = 15000000;
    T0MCR = 0x00000004;
    T0TCR = 1;
    while(T0TC != T0MR0);
    T0TC = 0;
}
void delay2()
{
    T0MR0 = 6000000;
    T0MCR = 0x00000004;
    T0TCR = 1;
    while(T0TC != T0MR0);
    T0TC = 0;
}
int main()
{
    IODIR0 = 0xFFFFFFF0;
    while(1)
    {
        IOSET0 = 0xFFFFFFF0;
        delay1();
        IOCLR0 = 0xFFFFFFF0;
        delay2();
    }
    return (0);
}