#### BUBBLE SORT
## first figure out how our memory work
#lw R1, 5, R2
# save to R2,0( R1+imm5s ) #XXXX, 0-15
## we will assume that our array size n is 16 for the sake of thistest.
#STRUCTURE: a b c d
# c a b
###
addi R1, R0, 15 # n
addi R7, R0, -1 # R7= -1 constant
# let r2 == loop counter i
# let R3 be our j
loopi:
# we need to reset our R3...
	add R3, R0, R0 # j = 0	
	loopj:
	# assume R4 and R5 to be our arr[j] and arr[j+1]

	lw R4, 0(R3) # arr[j] 
	lw R5, 1(R3) # arr[j+1]
	slt R6, R4, R5 #R6 = 1, R4 < R5 . hence if 5 is less, R6 is zero.
	beq R6, R0, swap # R4 < R3
	j else
	swap:
	sw R5, 0(R3)
	sw R4, 1(R3)
	else:
	# increment
	addi R3, R3, 1 # j = j+1
	bne R3, R1, loopj # when j = n, we don't loop
	# loop j is done now
	addi R2, R2, 1 #increment i
	bne R1, R2, loopi #i == n, stop loop

end:
	j end

