 AREA expt, CODE, READONLY
 mov r1, #11
 mov r2, #00
 mov r3, #08
loop movs r1, r1, lsr #1
 addcs r2, r2, #1
 sub r3, r3, #1
 cmp r3, #0
 bne loop
e b e
 end