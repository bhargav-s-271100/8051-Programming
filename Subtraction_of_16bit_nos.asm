//Subtraction of 16Bit mumbers
mov r0,#31h
mov r1,#33h
mov a,@r0
subb a,@r1
mov 39h,a
dec r0
dec r1
mov a,@r0
subb a,@r1
mov 38H,a
mov a,#0h
addc a,#0h
cjne a,#0h,borrow
sjmp H
borrow: mov 37H,#0FH
H: sjmp H
end