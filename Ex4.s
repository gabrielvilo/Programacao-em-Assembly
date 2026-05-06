.data
    baseMaior: .asciiz "Base maior: "
    baseMenor: .asciiz "Base menor: "
    altura:    .asciiz "Altura: "
    area:      .asciiz "Area: "

.text
main:
    li $v0, 4
    la $a0, baseMaior
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, baseMenor
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, altura
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    add $t3, $t0, $t1
    mul $t3, $t3, $t2

    li $t4, 2
    div $t3, $t4
    mflo $t5

    li $v0, 4
    la $a0, area
    syscall

    li $v0, 1
    move $a0, $t5
    syscall

    li $v0, 10
    syscall