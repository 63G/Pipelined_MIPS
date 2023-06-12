#TEST4
## ALGORITHM
# you have some register X, you want to check the first bit then shift right 16 times....
ori R2, R0, 15 # should count 16 times
ori R4, R0, 15 # our number X that we want to count
# use R3 as sum variable
LOOP:
ANDI R5, R4, 1 
add R3, R3, R5 
srli R4, R4, 1
addi R2, R2, -1
add R0, R0, R0
bne R2, R0, LOOP
sw R3, 0(R0)

end:
j end
