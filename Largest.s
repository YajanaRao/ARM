 area largest, code
 entry
 
 ldr r0,=0x40000000
 mov r4,#4
 mov r2,#0
 
up
 ldr r1,[r0],#4
 cmp r1, r2
 bge swap
 subs r4,r4,#1
 ble down
 bge up

 
swap
 mov r2,r1
 subs r4,r4,#1
 ble down
 bge up
 
 
down
stop b stop

 end
