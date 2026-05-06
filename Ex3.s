.data
    horas:        .asciiz "Horas: "
    horasExtras:  .asciiz "Extras: "
    desconto:     .asciiz "Desconto: "
    bruto:        .asciiz "Bruto: "
    liquido:      .asciiz "Liquido: "

.text
main:
    li $v0, 4
    la $a0, horas
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, horasExtras
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 4
    la $a0, desconto
    syscall

    li $v0, 5
    syscall
    move $t2, $v0

    li $t3, 10
    mul $t0, $t0, $t3

    li $t3, 15
    mul $t1, $t1, $t3

    add $t4, $t0, $t1
    sub $t5, $t4, $t2

    li $v0, 4
    la $a0, bruto
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 4
    la $a0, liquido
    syscall

    li $v0, 1
    move $a0, $t5
    syscall

    li $v0, 10
    syscall