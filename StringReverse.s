 area string_reverse, code
CR EQU 0x0D
 entry
 
 ldr r0,=string
 mov r1,#0
 mov r5,#0
 ldr r3,=0x40000000
 
strlen
 ldrb r2,[r0],#1
 cmp r2,#CR
 beq notrevs	
 add r1,r1,#1
 bne strlen
 
notrevs
 sub r0,r0,#2
 
revs
 ldrb r4,[r0]
 strb r4,[r3],#1
 sub r0,r0,#1
 sub r1,r1,#1
 cmp r1,r5
 beq down
 bne revs


down
stop b stop
 
string dcb "Deepak",CR
 
 end
