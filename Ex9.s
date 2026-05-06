.data
    n1:        .asciiz "Numero 1: "
    n2:        .asciiz "Numero 2: "
    resultado: .asciiz "Resultado: "

.text
main:
    li $v0, 4
    la $a0, n1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

lerN2:
    li $v0, 4
    la $a0, n2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    beq $t1, $zero, lerN2

    div $t0, $t1
    mflo $t2

    li $v0, 4
    la $a0, resultado
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall