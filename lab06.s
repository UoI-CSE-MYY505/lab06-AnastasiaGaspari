
.data
data: .word 1

.text
    la   x10, data
    li   x11, 0
    li   x9,  -1

loop:
l1: addi x10, x10, 4 
l2: beq  x10, x11, out 
l3: lw   x5,  0(x10)
l4: beq  x5,  x9, out 
l5: add  x5,  x5, x5 
l6: addi x5, x5, 1
l7: sw   x5,  0(x10) 
l8: j    loop 
out: 
l9: addi x17, x0, 10
l10: ecall

