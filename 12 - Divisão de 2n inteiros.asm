.data
	n1: .asciiz "Primeiro número: "
	n2: .asciiz "Segundo número: "
	R: .asciiz "Resultado: "
	
.text
	li $v0, 4
	la $a0, n1
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
#-----------------------------
	li $v0, 4
	la $a0, n2
	syscall
	
	li $v0, 5
	syscall

	move $t1, $v0	
#-----------------------------
	div $t0, $t1 #Dividir $t0 por $t1
#-----------------------------
	li $v0, 4
	la $a0, R
	syscall
	
	li $v0, 1
	mflo $a0
	syscall

