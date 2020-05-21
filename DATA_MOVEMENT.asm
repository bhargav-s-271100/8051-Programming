org 00h
//moving a data block from one location to other in data memory
mov r0,#30h
mov r1,#5
label: mov a,r1
	   mov @r0,a
	   inc r0
	   inc r1
	   CJNE r0,#34H,label
mov r0,#30h
mov r1,#60h
label1: mov a,r0
	    mov r1,a
	    inc r0
	    inc r1
	    CJNE @r1,#64H,label1
end