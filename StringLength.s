 area string_length, code
 entry
 
CR equ 0x0D
 ldr r0,=string
 mov r2,#0

loop
 ldrb r1,[r0],#1
 cmp r1,#CR
 beq down
 bne count
 
count
 add r2,r2,#1
 b loop

down 
stop b stop

string dcb "yajananrao",CR

 end
