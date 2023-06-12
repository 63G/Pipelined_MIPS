#LOAD numbers
#all numbers are in hex

lui 1 #R1 = 20

ORI R3, R1, 10 #R3 = 2a
# R-type

add R4, R1, R3 # R4 = 4a
SLLI R5, R1, 1 #R5 = 40
sub R4, R4, R5 #R4 = a
SLTU R5, R4, R5 #R5 = 1
XOR R5, R5, R4 # R5 = b  
ANDI R5, R5, 15  #R5 = b
SLT R5, R5, R5 #R5 = 0
addi R5, R4, 10 #R5 = 14
OR R6, R5, R0 # R6 = 14
AND R6, R6, R1 #R6 = 0
addi R6, R6, 1 #R6 = 1
RORI R6, R6, 30 #R6 = 4
NOR R6, R6, R0 #R6 = fffb
addi R2, R0, 15 #R2 = 15
SRA R6, R6, R2 #R6 = ffff
SRL R6, R6, R2 #R6 = 1
ROR R6, R6, R2 #r6 = 2
SLTIU R6, R6, 10 #R6 = 1
XORI R6, R6, 15 #R6 = e 1110
sw R6, 1(R0) #R6 = E
sw R5, 0(R0) #R5 = 14
SLTI R2, R5, 21 # 0
SLLI R2, R2, 2 # 4
NORI R2, R5, 14
SRLI R2, R2, 30 # 
RORI R2, R2, 1
SRAI R3, R2, 6
lw R3, 0(R0) #R3 = 14
lw R4, 1(R0) #R4 = E
################
