 AREA data1, DATA, READONLY
array dcb 0x01, 0x02, 0x03, 0x04
len dcb 0x04
 AREA data2, DATA, READWRITE
result dcd 0x00
 AREA code1, CODE, READONLY
 ldr r0, =array
 ldr r1, =len
 ldr r2, =result
 mov r3, #0
 ldr r4, [r1]
loop ldrb r5, [r0]
 add r3, r3, r5
 add r0, r0, #0x01
 sub r4, r4, #1
 cmp r4, #0
 bne loop
 str r3, [r2]
e b e 
 end