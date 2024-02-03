#include <LPC21xx.H>
int main()
{
    IODIR0 = (1<<10);
    while(1)
    {
        IOSET0 = (1<<10);
    }
    return (0);
}