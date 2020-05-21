ORG 00H

MOV R0,#30H
MOV R1,#31H

//ASCII To Unpacked BCD

MOV A,@R0
ANL A,#0FH
MOV R2,A

MOV A,@R1
ANL A,#0FH
MOV R3,A

//Unpacked BCD To Packed BCD

MOV A,R2
SWAP A
ORL A,R3
MOV R4,A

END