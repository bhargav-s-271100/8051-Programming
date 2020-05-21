org 00h
mov r0,#30h
mov dptr,#4000h
mov r2,#10h
loop:
		mov a,@r0
		movx @dptr,a
		inc r0
		inc dptr
		djnz r2,loop
h: sjmp h
end