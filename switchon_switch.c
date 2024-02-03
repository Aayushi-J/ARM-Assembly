#include<LPC21xx.H>
int main()
{
    IODIR0 |= (1<<10);
    IODIR0 |= (0<<1);
    if(IOPIN0 & (1<<1))
    {
        IOSET0 |= (1<<10);
    }
    else
    {
        IOCLR0 |= (1<<10);
    }
    return (0);
}