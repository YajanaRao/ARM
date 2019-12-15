 area divide, code
 entry

 mov r0, #9
 mov r1, #2
 mov r3, #0

loop
 subs r0, r0, r1
 addge r3, r3, #1
 bge loop
 add r2, r0, r1

stop b stop 
 end
