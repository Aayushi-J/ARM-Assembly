#include<LPC21xx.H>
void delay()
{
    int i;
    for(i=0;i<=10000;i++);
}
int main()
{
   int i;
   IODIR1 |= 0xFF;
   while(1)
    {
        for(i=0;i<=7;i++)
        {
            IOSET1 |=(1<<i);
            delay();
            IOCLR1 |=(1<<i);
        }
    }
    return(0);
 }