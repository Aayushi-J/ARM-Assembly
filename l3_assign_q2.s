 AREA code1, DATA, READONLY
data dcb 0x05
len dcb 0x08
 AREA code2, DATA, READWRITE
count dcd 0x00
 AREA code3, CODE, READONLY
 ldr r0, =data
 ldr r1, =len
 ldr r2, =count
 ldrb r4, [r0]
 ldrb r5, [r1]
 mov r3, #0x00
loop movs r4, r4, lsr #1
 addcc r3, r3, #0x01
 subs r5, r5, #0x01
 cmp r5, #0x00
 bne loop
e b e
 end