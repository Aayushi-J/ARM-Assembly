#include<LPC214x.H>
void delay()
{
    T0MR0 = 1000;
    T0MCR = 0x00000004;
    T0TCR = 1;
    while(T0TC != T0MR0);
    T0TC = 0;
}
int main()
{
    IODIR0 = 0xFFFFFFFF;
    while(1)
    {
        IOSET0 = 0xFFFFFFFF;
        delay();
        IOCLR0 = 0xFFFFFFFF;
        delay();
    }
    return (0);
}