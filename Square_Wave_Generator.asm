ORG 00H

MOV R1,#10H   // 1

main :  CPL P1.1	//1
		ACALL DELAY	//2
		DJNZ R1,main	//2
		SJMP H			

DELAY : MOV R0,#0FFH		//1
		HERE : DJNZ R0,HERE		//2*255 = 510
RET								//2

H : SJMP H

END

