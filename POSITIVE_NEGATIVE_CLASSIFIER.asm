ORG 00H

MOV R1,#30H
MOV R2,#10
MOV R3,#0H
MOV R4,#0H

loop :  CLR C
		MOV A,@R1
		RLC A
		INC R1
		JNC positive
		JC  negative
L	:	DJNZ R2,loop
		SJMP H
		
positive : INC R3
			SJMP L
		
negative : INC R4
			SJMP L

H : SJMP H
END
