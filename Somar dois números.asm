.data
	Numero1: .asciiz "Digite o primeiro número: "
	Numero2: .asciiz "Digite o segundo número: "
	Resultado: .asciiz "O resultado da soma é: "
.text
	li $v0, 4
	la $a0, Numero1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, Numero2
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	#Os valores estão em t0 e t1
	
	add $t2, $t1, $t0
	li $v0, 4
	la $a0, Resultado
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
