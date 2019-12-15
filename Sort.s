 area sorted, code
 entry
 mov r5,#4
 mov r6,#0

check
 ldr r0,=0x40000000
 mov r4,#4
 subs r5,r5,#1
 bne up
 beq down

up
 subs r4,r4,#1
 beq check
 ldr r2,[r0],#4
 ldr r3,[r0]
 cmp r2,r3
 bge swap
 cmp r4,r6
 bne up

down
stop b stop

swap
 str r2,[r0]
 sub r0,r0,#4
 str r3,[r0],#4
 cmp r2,r2
 beq up

 end
