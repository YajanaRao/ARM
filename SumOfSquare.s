 area sumofsquare, code
 entry
 ldr r0,=0x40000000
 ldr r2,[r0]
 mov r1,#5
 
up
 ldr r2,[r0],#4
 mul r3,r2,r2
 add r4,r4,r3
 subs r1,r1,#1
 bne up
 str r4,[r0,#4]
stop b stop
 end
