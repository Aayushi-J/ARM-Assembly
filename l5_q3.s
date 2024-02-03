 AREA code1, DATA, READONLY
string dcb "Amrita College\0"
 AREA code2, DATA, READWRITE
num dcd 0
 AREA code3, CODE, READONLY
 ldr r0, =string
 ldr r1, =num
 mov r3, #0
loop ldrb r2, [r0], #0x01
 add r3, r3, #1
 cmp r2, #" "
 beq exit
 cmp r2, #"\0"
 mov r3, #-1
 bne loop
exit str r3, [r1]
e b e
 end