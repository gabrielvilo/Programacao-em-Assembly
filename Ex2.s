.data
    p:   .asciiz "Quantidade de camisetas pequenas: "
    m:   .asciiz "Quantidade de camisetas medias: "
    g:   .asciiz "Quantidade de camisetas grandes: "
    res: .asciiz "Total de camisetas = "

.text
main:
    li $v0, 4
    la $a0, p
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, m
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, g
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    li $t3, 10
    mul $t0, $t0, $t3

    li $t3, 12
    mul $t1, $t1, $t3

    li $t3, 15
    mul $t2, $t2, $t3

    add $t4, $t0, $t1
    add $t4, $t4, $t2

    li $v0, 4
    la $a0, res
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 10
    syscall