.global modarray
.text
# rdi : N
# rsi : array
modarray:
    movq $3, %r8
    movq $5, %r9
    movq $15, %r10
    movq $1, %r11
    incq %rdi
    jmp mainiter
mainiter:
    decq %r8
    decq %r9
    decq %r10
    cmpq %r10, $0 # checking 15
    je check15
    cmpq %r9, $0
    je check5
    cmpq %r8, $0
    je check3
    movq %r11, (%rsi)
    incq %r11
    cmpq %r11, %rdi
    je end
    addq $8, %rsi
    jmp mainiter
check15:
    movq $3, %r8
    movq $5, %r9
    movq $15, %r10
    movq $-3, (%rsi)
    incq %r11
    cmpq %r11, %rdi
    je end
    addq $8, %rsi
    jmp mainiter


check5:
    movq $5, %r9

    movq $-2, (%rsi)
    incq %r11
    cmpq %r11, %rdi
    je end
    addq $8, %rsi
    jmp mainiter

check3:
    movq $3, %r8
    movq $-1, (%rsi)
    incq %r11
    cmpq %r11, %rdi
    je end
    addq $8, %rsi
    jmp mainiter



end:
    ret

