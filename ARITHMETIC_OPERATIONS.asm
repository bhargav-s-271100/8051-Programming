org 00h
mov r0,#30h
mov r1,#31h
//Function to add two 8 bit numbers
mov a,@r0
add a,@r1
mov 33h,a
mov a,#00h
addc a,#00h
mov 32h,a

//Function to subtract two 8 bit numbers
mov a,@r0
subb a,@r1
mov 35h,a
mov a,#00h
addc a,#00h
mov 34,a
//Function to multiply two 8 bit numbers
mov a,@r0
mov b,@r1
mul ab
mov 36h,b
mov 37h,a
//Function to divide two 8 bit numbers
mov a,@r0
mov b,@r1
div ab
mov 38h,b
mov 39h,a
end