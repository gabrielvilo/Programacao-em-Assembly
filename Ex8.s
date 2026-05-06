.data
    numero:    .asciiz "Numero: "
    resultado: .asciiz "Resultado: "

.text
main:
    li $v0, 4
    la $a0, numero
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    bgtz $t0, positivo
    bltz $t0, negativo

    j fim

positivo:
    mul $t0, $t0, 2
    j fim

negativo:
    mul $t0, $t0, 3

fim:
    li $v0, 4
    la $a0, resultado
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 10
    syscall