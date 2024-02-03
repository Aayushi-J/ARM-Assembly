 AREA are1, CODE, READONLY
 mov r5, #0x02
 mov r1, #0x08
 mov r7, #0x00
loop movs r5, r5, lsr #1
 addcc r7, r7, #0x01
 sub r1, r1, #0x01
 cmp r1, #0
 bne loop
e b e 
 end