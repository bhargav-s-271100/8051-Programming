org 00h
mov r0,#30h
mov r1,#36h
mov r2,#5
loop: mov a,@r0
	  mov @r1,a
	  inc r0
	  dec r1
	  djnz r2,loop
end