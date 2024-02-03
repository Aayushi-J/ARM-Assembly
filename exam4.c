#include<lpc214x.h>
void delay()
{
    int i;
    for(i=0;i<100;i++);
}
int main()
{
    IODIR0 |= 0x800ff001;
    IODIR1 |= (0<<22);
    while(1)
    {
        if(IOPIN1 & (1<<22))
        {
             IOSET0 |= 0x80000001;
        }
        else
        {
            IOCLR0 |= 0xFFFFFFFF;
        }
    }
    return (0);
}