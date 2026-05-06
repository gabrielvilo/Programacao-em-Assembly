.data
    numero: .asciiz "Numero: "

    faixa1: .asciiz "0 a 25: "
    faixa2: .asciiz "26 a 50: "
    faixa3: .asciiz "51 a 75: "
    faixa4: .asciiz "76 a 100: "

.text
main:
    li $t0, 0
    li $t1, 0
    li $t2, 0
    li $t3, 0

ler:
    li $v0, 4
    la $a0, numero
    syscall

    li $v0, 5
    syscall
    move $t4, $v0

    bltz $t4, mostrar

    ble $t4, 25, contar1
    ble $t4, 50, contar2
    ble $t4, 75, contar3
    ble $t4, 100, contar4

    j ler

contar1:
    addi $t0, $t0, 1
    j ler

contar2:
    addi $t1, $t1, 1
    j ler

contar3:
    addi $t2, $t2, 1
    j ler

contar4:
    addi $t3, $t3, 1
    j ler

mostrar:
    li $v0, 4
    la $a0, faixa1
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, faixa2
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, faixa3
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, faixa4
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall