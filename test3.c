#include <LPC21xx.H>
#define T0CTCR (*((volatile unsigned long *)0xE0004070))
#define T1CTCR (*((volatile unsigned long *)0xE0008070))
int count;
int main()
{
PINSEL0 = 0x00200020;
T0TCR = 0x00000001;
T1TCR = 0x00000001;
T0CTCR = 0x00000001;
T1CTCR = 0x00000001;
while(1)
count = T0TC;
}