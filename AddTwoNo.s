 area add_two_no, code
 entry
 ldr r0,=0x40000000
 ldr r1,[r0],#4
 ldr r2,[r0],#4
 adds r3,r2,r1
 str r3,[r0]
 
stop b stop
 end
