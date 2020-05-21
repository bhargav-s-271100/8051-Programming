ORG 00H

MOV R1,#30H
MOV R2,#10
MOV R3,#0H
MOV R4,#0H

loop :  CLR C
		MOV A,@R1
		RRC A
		INC R1
		JNC even
		JC odd
L	:	DJNZ R2,loop
		SJMP H
		
even : INC R3
		SJMP L
		
odd : INC R4
		SJMP L

H : SJMP H
END
