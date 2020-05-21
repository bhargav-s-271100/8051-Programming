ORG 00H
	
MOV R0,#30H
MOV R2,#10

MOV A,@R0
MOV R1,#30H
loop :	MOV A,@R0
		SUBB A,@R1
		JC interchange
		L : INC R1
		DJNZ R2,loop

SJMP H
									
interchange :   MOV A,@R0
				XCH A,@R1
				MOV @R0,A
				SJMP L

H :	MOV A,@R0
	MOV R3,A

M : SJMP M

END