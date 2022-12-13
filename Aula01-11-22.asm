.data
	msg1: .asciiz "Digite um número positivo: "
	msgPar: .asciiz "O número é PAR"
	msgImpar: .asciiz "O número é IMPAR"
	
.text
	la $a0, msg1 
	jal imprimeString
	jal lerInteiro
	
	move $a0, $v0
	jal ehImpar
	beq $v0, $zero, imprimePar
	la $a0, msgImpar
	jal imprimeString
	jal encerraPrograma
	
	imprimePar: #Rótulo (Label)
	la $a0, msgPar
	jal imprimeString
	jal encerraPrograma
	
	ehImpar: #Rótulo
	li $t0, 2
	div $a0, $t0
	mfhi $v0
	jr $ra
	
	encerraPrograma: #Função para encerrar programa
	li $v0, 10
	syscall
	
	imprimeString: #Função que recebe uma String
	li $v0, 4
	syscall
	jr $ra
	
	lerInteiro: #Função para ler um inteiro
	li $v0, 5
	syscall
	jr $ra
	