 area blockcopy, code
 entry
 ldr r0,=0x40000000
 ldr r3,=0x40000040
 
 mov r1,#2

up
 ldr r2,[r0],#4
 str r2,[r3],#4
 subs r2,r2,#1
 bge up
 
stop b stop
 end
