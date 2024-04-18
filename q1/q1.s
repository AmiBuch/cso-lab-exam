.global operations
.text
# rdi houses num1
# rsi houses num 2
# rdx houses operation number

operations:
    cmpq $6, %rdx
    ja .L8
    jmp *.L4(,%rdx, 8)

.L3:
    addq %rdi, %rsi
    jmp .end
.L5:
    subq %rsi, %rdi
    movq %rdi, %rsi
    jmp .end
.L6:
    movq %rdi, %rax
    cqto
    idivq %rsi
    movq %rax, %rsi
    jmp .end
.L7:
    



    