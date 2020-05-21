ORG 00H

MOV R0,#30H
MOV R1,#3CH
MOV R2,#10

loop :  MOV A,@R0
		SUBB A,@R1
		INC R0
		CJNE A,#00H,L
		SJMP result
L    :  DJNZ R2,loop
		
result :    DEC R0
			MOV 3EH,R0

H : SJMP H

END