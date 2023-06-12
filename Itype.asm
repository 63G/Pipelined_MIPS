# jump and branches

lui 1
addi R3,R1,10
SLTI R4,R3,-50
SLTIU R5,R3,50
XORI R6, R0, 3
ORI R7 , R5 , 1
ANDI R2 , R7 , 0
NORI R1 , R3, -10
SLLI R5,R5,1
SRLI R3,R3,2
SRAI R1,R1,2
RORI R7,R7,14

exit:
j exit