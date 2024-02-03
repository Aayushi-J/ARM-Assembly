#include<LPC21xx.H>
delay()
{
    int i;
    for(i=0;i<=10000;i++);
}
int main()
{
    IODIR1 |= 0xFF;
    while(1)
    {
        IOSET1 |= (1<<17);
        delay();
        IOCLR1 |= (1<<17);
        delay();
    }
    return(0);
}