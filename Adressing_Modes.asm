org 00h
//immediate addressing
mov r0,#512h //r0 can store only values <255
//direct addressing
mov a,r0
//indirect addressing
mov r1,#33h //immediate
mov a,@r1  //@ is equivalent to pointer
//indexing
movc a,@a+pc //pc is first incremented and operation a=mem[a+pc] is performed 
end