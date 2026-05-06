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

    andi $t1, $t0, 1
    beq $t1, $zero, par

    addi $t0, $t0, 8
    j fim

par:
    addi $t0, $t0, 5

fim:
    li $v0, 4
    la $a0, resultado
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 10
    syscall