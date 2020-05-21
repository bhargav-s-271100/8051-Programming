org 00h
mov r0,#30h
mov r1,#60h
mov r2,#5
loop: mov a,@r0
      mov b,@r1
	  mov @r0,b
	  mov @r1,a
	  inc r0
	  inc r1
	  djnz r2,loop
//swapping using inbuilt instructions
mov r0,#30h
mov r1,#60h
mov r2,#5
loop1: mov a,@r0
	   xch a,@r1
	   mov @r0,a
       inc r0
	   inc r1
	   djnz r2,loop1
end

