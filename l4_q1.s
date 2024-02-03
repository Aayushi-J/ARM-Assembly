 AREA data1, DATA, READONLY
num dcd 1, 3, -5, 7
len dcd 4
 AREA data2, DATA, READWRITE
result dcw 0
 AREA exp1, CODE, READONLY
 ldr r0, =num
 ldr r1, =len
 ldr r2, =result
 ldr r6, [r1]
 mov r4, #0
loop ldr r5, [r0], #0x04
 movs r5, r5
 addmi r4, r4, #1
 sub r6, r6, #1
 cmp r6, #0x00
 bne loop
 str r4, [r2]
e b e
 end
