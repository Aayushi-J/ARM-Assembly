 AREA exp1, CODE, READONLY
 mov r5, #0x03
 mov r2, #0x08
 mov r1, #0x00
shift movs r5, r5, lsr #1
 addcs r1, r1, #0x01
 sub r2, r2, #0x01
 cmp r2, #0
 bne shift
e b e
 end