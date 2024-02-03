 AREA code1, DATA, READONLY
data1 dcd 0x21, 0x22
data2 dcd 0x23, 0x24
 AREA code2, DATA, READWRITE
sum dcd 0x00, 0x00
 AREA exp1, CODE, READONLY
 ldr r0, =data1
 ldr r1, =data2
 ldr r2, [r0]
 ldr r3, [r1]
 adds r4, r2, r3
 add r0, r0, #0x04
 add r1, r1, #0x04
 ldr r2, [r0]
 ldr r3, [r1]
 adc r5, r2, r3
 adc r6, r5, r4
e b e 
 end