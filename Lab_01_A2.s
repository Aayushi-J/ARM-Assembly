 AREA expl_2, CODE, READONLY
 mov r1, #0x1f
 mov r2, #0xff
 mov r3, #0x25
 mov r4, #0x13
 and r5, r1, r2
 mvn r3, r3
 and r6, r3, r4
 orr r7, r6, r5
e b e
 end
;(X&Y)|(~Z&G)