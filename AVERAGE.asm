org 00h
mov r0,#30H
mov r1,#3AH
mov r2,#10H
mov b,r2
mov a,#0H
loop:   
		add a,@r0
		da a
		inc r0
		djnz r2,loop
div ab
add a,#0H
da a
mov @r1,a

end