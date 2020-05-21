org 00h
mov r0,#30h
mov dptr,#400h
mov r2,#10h
loop:
		mov a,#0h
		movc a,@a+dptr
		mov @r0,a
		inc r0
		inc dptr
		djnz r2,loop
h: sjmp h
end