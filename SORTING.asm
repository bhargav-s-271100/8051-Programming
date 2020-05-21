ORG 00H
	
MOV R0,#30H
MOV R2,#10

outer_loop :    MOV A,@R0
				MOV R1,#30H
				MOV R3,#10H
				inner_loop :	SUBB A,@R1
								INC R1
								JC interchange
								L: DJNZ R3,inner_loop
				INC R0
				DJNZ R2,outer_loop
				SJMP H
									
interchange :   XCH A,@R1
				SJMP L

H : SJMP H

END