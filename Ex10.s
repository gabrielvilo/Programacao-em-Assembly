.data
    n1:    .asciiz "Numero 1: "
    n2:    .asciiz "Numero 2: "
    resto: .asciiz "Resto: "

.text
main:
    li $v0, 4
    la $a0, n1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, n2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    bgt $t0, $t1, calcular

    move $t2, $t0
    move $t0, $t1
    move $t1, $t2

calcular:
    div $t0, $t1
    mflo $t2

    mul $t3, $t2, $t1
    sub $t4, $t0, $t3

    li $v0, 4
    la $a0, resto
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 10
    syscall