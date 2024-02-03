 AREA code1, DATA, READONLY 
num dcd 0x05
 AREA code2, DATA, READWRITE
result dcd 0x00
 AREA exp1, CODE, READONLY
 ldr r0, =num
 ldr r1, =result
 ldr r3, [r1]
 ldr r2, [r0]
 movs r2, r2, lsr #1
 addcs r3, r3, #0x01
 addcc r3, r3, #0x02
 str r3, [r1]
e b e
 end

