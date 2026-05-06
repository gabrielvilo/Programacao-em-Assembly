.data
    valorA: .asciiz "A: "
    valorB: .asciiz "B: "
    resultado: .asciiz "Resultado: "

.text
main:
    li $v0, 4
    la $a0, valorA
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 4
    la $a0, valorB
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    beq $t0, $t1, soma

    mul $t2, $t0, $t1
    j mostrar

soma:
    add $t2, $t0, $t1

mostrar:
    li $v0, 4
    la $a0, resultado
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 10
    syscall