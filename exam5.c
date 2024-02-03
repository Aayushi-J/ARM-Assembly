#include<lpc214x.h>
int main()
{
    IODIR0 |= (0<<9);
    IODIR0 |= (0<<10);
    IODIR0 |= (1<<2);
    if(IOPIN0 & (1<<9))
    {
        if(IOPIN0 & (1<<10)){
        IOSET0 |= (1<<2);}
    }
    else
    {
        IOCLR0 |= (1<<2);
    }
    return (0);
}