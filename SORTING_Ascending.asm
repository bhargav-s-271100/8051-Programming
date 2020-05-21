ORG 00H
	
MOV R0,#30H
MOV R2,#10

outer_loop :    MOV A,@R0
				MOV R1,#30H
				MOV R3,#10
				inner_loop :	MOV A,@R0
								SUBB A,@R1
								JC interchange
								L : INC R1
							    DJNZ R3,inner_loop
				INC R0
				DJNZ R2,outer_loop
				SJMP H
									
interchange :   MOV A,@R0
				XCH A,@R1
				MOV @R0,A
				SJMP L

H : SJMP H

END