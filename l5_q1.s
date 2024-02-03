 AREA data, DATA, READONLY
string dcb "Amrita\0"
 AREA data1, DATA, READWRITE
length dcd 0
 AREA code1, CODE, READONLY
 ldr r0, =string
 ldr r1, =length
 mov r2, #0
loop ldrb r3, [r0], #1
 cmp r3, #"\0"
 addne r2, r2, #1
 bne loop
 str r2, [r1]
e b e
 end
