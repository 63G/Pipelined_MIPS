
jal end2 #R7 = 76 which PC + 1
end2:
beq R2, R0, end3 
bne R0, R0, end3 
blt R6, R0, end3 
bge R0, R6, end3 
lui 1 # R1 = 32
j finalEnd
end3:
addi R1, R0, 19 
finalEnd:
j finalEnd
