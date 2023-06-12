addi R1, R0, 1 #R1 = 1
addi R2, R1, 3 #R2 = 4

lw R3, 0(R0) # R3 = 5
add R4, R3, R2 # R4 = 9
or R5, R4, R3 #R5 = 13

BNE R5, R0, exit
add R6, R5, R4 # should not work
j next
add R5, R5, R5 # R5 should not be excuted and R5 = 13 as before
next:

BEQ R0, R0, next2
addi R4, R0, 5 # should not be taken

next2:


exit:
j exit
	
