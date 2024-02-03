#include <lpc214x.h>

void delay(int time) {
    volatile int i;
    for (i = 0; i < time; i++);
}
int main() {
        IODIR0 |= 0xFF;
        IODIR1 |= (0 << 22);
        IODIR1 |= (0 << 23);
        IODIR1 |= (0 << 24);
    while (1) {
        if (IOPIN1 & (1 << 22)) {
            IOSET0 = 0xFF;
            delay(10);
            IOCLR0 = 0xFF;
        } else if (IOPIN1 & (1 << 23)) {
            IOSET0 = 0xFF;
            delay(100);
            IOCLR0 = 0xFF;
        } else if (IOPIN1 & (1 << 24)) {
            IOSET0 = 0xFF;
            delay(1000);
            IOCLR0 = 0xFF;
        } else {
            IOCLR0 = 0xFF;
        }
    }
    return 0;
}

