ORG 00H

MOV R0,#30H

//Packed BCD to Unpacked BCD

MOV A,@R0
ANL A,#0FH
MOV R1,A

MOV A,@R0
ANL A,#0F0H
SWAP A
MOV R2,A

//Unpacked BCD to ASCII

MOV A,R1
ORL A,#30H
MOV R1,A

MOV A,R2
ORL A,#30H
MOV R2,A

END
