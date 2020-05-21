org 00h
//Enter the numbers in locations 0x30-0x33
//Addition of 16bit numbers
mov r0,#31h
mov r1,#33h
mov a,@r0
add a,@r1
mov 36h,a
dec r0
dec r1
mov a,@r0
addc a,@r1
mov 35h,a
mov a,#0h
addc a,#0h
mov 34h,a
//Subtraction of 16bit numbers
mov r0,#31h
mov r1,#33h
mov a,@r0
subb a,@r1
mov 39h,a
mov a,#0h
addc a,#0h
mov r2,a
dec r0
dec r1
mov a,@r0
subb a,@r1
cjne r2,#0h,m
sjmp h
m: add a,#0FH
   subb a,#10H
h:  mov 38h,a
	mov a,#0h
	addc a,r2
cjne r2,#0h,borrow
sjmp n
borrow: mov 37h,#0Fh
n: sjmp n
end

