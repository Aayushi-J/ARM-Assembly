 AREA data, DATA, READONLY
string dcb "Amrita\0"
 AREA data2, DATA, READWRITE
dest dcd 0
 AREA code1, CODE, READONLY
 ldr r0, =string
 ldr r1, =dest
 ldr r2, [r0]
 ldr r3, [r1]
loop ldrb r4, [r0], #1
 str r3, [r1], #1
 cmp r4, #"\0"
 bne loop
e b e
 end