 AREA data1, DATA, READONLY
string1 dcb "Amrita1\0"
string2 dcb "Amrita2\0"
 AREA data1, DATA, READWRITE
result dcd 0
 AREA data2, CODE, READONLY
 ldr r0, =string1
 ldr r1, =string2
 mov r4, #0
loop ldrb r2, [r0], #1
 ldrb r3, [r1], #1
 cmp r2, r3
 bne exit
 cmp r2, #"\0"
 cmpeq r3, #"\0"
 beq exit1
 b loop
exit mov r4, #0x00
 b exit2
exit1 moveq r4, #0xff
exit2
e b e
 end