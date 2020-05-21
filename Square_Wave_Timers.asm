ORG 00H

MOV TMOD,#01H

MOV R2,#10H

loop :  MOV TL0,#0D2H
		MOV TH0,#0FFH
		CPL P1.1
		ACALL Delay
		DJNZ R2,loop
		SJMP H
		
Delay :  SETB TR0
	     Here : JNB TF0,Here
		 CLR TR0
		 CLR TF0
RET
		 
H : SJMP H

END