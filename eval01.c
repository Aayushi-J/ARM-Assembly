#include<lpc214x.h>
void delay1()
{
    int i;
    for(i=0;i<1000000;i++);
}
void delay2()
{
    int j;
    for(j=0;j<5;j++);
}
int main()
{
    int k;
    IODIR0 = 0xff;
    IODIR0 |= (0<<22);
    IODIR0 |= (0<<23);
    while(1)
    {
        if(IOPIN0 & (1<<22))
        {
        for(k=0;k<=7;k++)
        {
             IOSET0 |= (1<<k);
             delay1();
             IOCLR0 |= (1<<k);
        }
        }
        if(IOPIN0 & (1<<23))
        {
        for(k=0;k<=7;k++)
        {
             IOSET0 |= (1<<k);
             delay2();
             IOCLR0 |= (1<<k);
        }
        }
    }
    return (0);
}