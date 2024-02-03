 AREA code1, DATA, READWRITE
input dcd 4
array dcd 2, 4, 5, 1, 4, 8, 4, 6
len dcd 8
 AREA code2, CODE, READONLY
 mov r0, #3
 ldr r1, =array
 ldr r2, =input
 ldr r3, =len
 ldr r4, [r3]
 ldr r5, [r2]
loop ldr r6, [r1], #0x04