 AREA data,DATA,READONLY
val1 dcd 0x43
val2 dcd 0x45

 AREA data1,DATA,READWRITE
result dcd 0x00

 AREA exp1,CODE,READONLY
 ldr r0,=val1
 ldr r1,=val2
 ldr r2,[r0]
 ldr r3,[r1]
 add r4,r2,r3
 ldr r5,=result
 str r4,[r5]
e b e
 end