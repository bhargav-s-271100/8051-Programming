org 00h
mov r0,#30h
mov r2,#00h
h:  cjne @r0,#0h,down
	cjne @r0,#0Fh,up
	down: 
		dec r2
		mov 31h,r2
		sjmp h
	up: 
		inc r2
		mov 31h,r2
		sjmp h

sjmp h
end