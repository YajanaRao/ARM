 area smallest, code
 entry
CR EQU 0x0D
	
 ldr r0,=0x40000000
 mov r1,#3
 ldr r3,[r0]
 
loop
 ldr r2,[r0],#4
 cmp r3, r2
 bge swap
 subs r1,r1,#1
 ble down
 bge loop
 
swap
 mov r3,r2
 subs r1,r1,#1
 ble down
 bge loop
 
down
stop b stop

 end
