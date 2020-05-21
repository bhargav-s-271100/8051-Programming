org 00h
mov r0,#30H
mov r1,#90H
loop:   mov a,r1
		add a,#0h
		da a
		cjne a,#99H,BCD
		mov r1,#0H
		BCD:    cjne @r0,#00H,down
				cjne @r0,#0FFH,up
				up: 	inc r1
						sjmp loop
				down:   dec r1
						sjmp loop
sjmp loop

end