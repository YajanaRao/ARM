 area string_concat, code
 entry
 
CR equ 0x0D
 
 ldr r1,=string1
 ldr r3,=string2
 ldr r2,=0x40000000
 
movstring1
 ldrb r5,[r1],#1
 cmp r5,#CR
 beq movstring2
 strb r5,[r2],#1
 b movstring1
 
movstring2
 ldrb r5,[r3],#1
 cmp r5,#CR
 beq down
 strb r5,[r2],#1
 b movstring2
 
down
stop b stop
 
string1 dcb "yajana",CR
string2 dcb "rao",CR

 end
