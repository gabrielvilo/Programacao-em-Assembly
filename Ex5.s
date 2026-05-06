.data
    cat1: .asciiz "Cateto 1: "
    cat2: .asciiz "Cateto 2: "
    hip:  .asciiz "Hipotenusa: "

.text
main:
    li $v0, 4
    la $a0, cat1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, cat2
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    mul $t2, $t0, $t0
    mul $t3, $t1, $t1
    add $t4, $t2, $t3

    li $v0, 4
    la $a0, hip
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 10
    syscall