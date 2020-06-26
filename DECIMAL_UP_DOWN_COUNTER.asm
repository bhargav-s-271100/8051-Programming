org 00h
MOV R0,#30H
MOV R1,#31H
loop:   MOV A,@R0
		ADD A,#0H
		DA A
		MOV 02,@R1
		CJNE R2,#00H,up
		SJMP down
		
		up: INC A
			ADD A,#0H
			DA A
			MOV R3,A
			CJNE A,#99H,up
			LJMP H
		down :	DEC A
				MOV R2,A
				ANL A,#0FH
				CJNE A,#0FH,here
				SUBB A,#06H
				here : ADD A,#00H
				ANL 02,#0F0H
				ORL A,R2
				DA A
				MOV R3,A
				CJNE A,#00H,down
		H :SJMP loop
sjmp loop

end
