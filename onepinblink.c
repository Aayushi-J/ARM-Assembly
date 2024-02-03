#include<LPC21xx.H>
void delay()
{
    int i;
    for(i=0;i<=20;i++);
}
int main()
{
    IODIR0 |= (1<<10);
    IODIR0 |= (0<<1);
    if(IOPIN0 & (1<<1))
    {
        IOSET0 |= (1<<10);
        delay();
        IOCLR0 |= (1<<10);
        delay();
    }
    else
    {
        IOCLR0 |= (1<<10);
    }
    return (0);
}