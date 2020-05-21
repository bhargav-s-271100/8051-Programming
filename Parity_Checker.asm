ORG 00H

MOV R1,#30H
MOV R2,#8
MOV R3,#0H
MOV R4,#0H
MOV A,@R1

loop :  CLR C
		RRC A
		JNC zeros
		JC  ones
L	:	DJNZ R2,loop
		SJMP H
		
zeros :     INC R3
			SJMP L
		
ones :      INC R4
			SJMP L

H : SJMP H
END
