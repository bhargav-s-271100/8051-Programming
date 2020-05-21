ORG 00H

MOV R1,#10H   // 1

main :  CPL P1.1	//1
		ACALL DELAY	//2
		DJNZ R1,main	//2
		SJMP H			

DELAY : MOV R0,#0E3H		//1
		HERE : DJNZ R0,HERE		//2*227 = 454
RET								//2

H : SJMP H

END

