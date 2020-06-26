ORG 00H
	
MOV R0,#30H
MOV R2,#10
MOV R1,#30H

loop :  MOV A,@R0
		JNB ACC.7,M
		MOV A,@R1
		JB ACC.7,Same
		ACALL interchange
		M : MOV A,@R1
		    JNB ACC.7,Same
		L : INC R1
		DJNZ R2,loop
		
SJMP H
		
Same :  SUBB A,@R0
		JNC N
		SJMP L
		N : ACALL interchange
		SJMP L

interchange :   MOV A,@R0
				XCH A,@R1
				MOV @R0,A
				RET

H :	MOV A,@R0
	MOV R3,A

SJMP $

END