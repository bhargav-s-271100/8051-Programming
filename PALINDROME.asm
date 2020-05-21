ORG 00H

MOV R0,#30H
MOV R2,#7

MOV R1,#0H

MOV B,@R0

loop :	MOV A,B
		RRC A
		MOV B,A
		MOV A,R1
		ADDC A,#0H
		RL A
		MOV R1,A
		DJNZ R2,loop
	
SUBB A,@R0
ADDC A,#0H

CJNE A,#0H,H

increment : MOV 32H,#1

H : SJMP H

END