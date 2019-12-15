 area add_64, code
 entry
 
 ldr r0,=0x40000000
 ldr r1,[r0]
 ldr r2,[r0,#4]
 ldr r3,[r0,#4]
 ldr r4,[r0,#4]
 adds r5,r1,r2
 adc r6,r3,r4
 
 str r6,[r0,#4]
 str r5,[r0,#4]

stop b stop
 end
