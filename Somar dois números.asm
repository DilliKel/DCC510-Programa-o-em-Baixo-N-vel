.data
	Numero1: .asciiz "Digite o primeiro n�mero: "
	Numero2: .asciiz "Digite o segundo n�mero: "
	Resultado: .asciiz "O resultado da soma �: "
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
	
	#Os valores est�o em t0 e t1
	
	add $t2, $t1, $t0
	li $v0, 4
	la $a0, Resultado
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
