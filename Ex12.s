.data
    altura:      .asciiz "Altura: "
    menorAltura: .asciiz "Menor altura: "
    maiorAltura: .asciiz "Maior altura: "

.text
main:
    li $t0, 0

ler:
    beq $t0, 15, mostrar

    li $v0, 4
    la $a0, altura
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    beq $t0, 0, iniciar

    blt $t1, $t2, novaMenor
    bgt $t1, $t3, novaMaior

continuar:
    addi $t0, $t0, 1
    j ler

iniciar:
    move $t2, $t1
    move $t3, $t1
    addi $t0, $t0, 1
    j ler

novaMenor:
    move $t2, $t1
    j continuar

novaMaior:
    move $t3, $t1
    j continuar

mostrar:
    li $v0, 4
    la $a0, menorAltura
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, maiorAltura
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall