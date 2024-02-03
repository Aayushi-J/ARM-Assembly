 AREA data1, DATA, READONLY
string dcb "jahhaj\0"
 AREA data1, DATA, READWRITE
result dcd 0
 AREA data2, CODE, READONLY
 ldr r0, =string
 ldr r5, =result
 ldr r4, [r5]
 mov r3, #0
loop1 ldrb r1, [r0], #1
 add r3, r3, #1
loop ldrb r1, [r0], #1
 ldrb r5, [r7], #-1
 cmp r1, r5
 bne exit
 cmp r0, r7
 beq exit1
 b loop
exit mov r4, #0x00
 b exit2
exit1 mov r4, #0xff
exit2
e b e
 end
