 AREA code1, DATA, READONLY
num dcb 1, 2, 5, 3
len dcb 4
 AREA code2, DATA, READWRITE
big dcd 0x00
 AREA code3, CODE, READONLY
 ldr r0, =num
 ldr r1, =len
 ldr r5, =big
 ldrb r2, [r1]
 ldrb r4, [r0]
loop ldrb r3, [r0], #0x01
 cmp r3, r4
 movgt r4, r3
 sub r2, r2, #1
 cmp r2, #0
 bne loop
 str r4, [r5]
e b e
 end