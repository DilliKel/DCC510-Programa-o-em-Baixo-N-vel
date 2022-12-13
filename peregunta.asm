.data
	pergunta: .asciiz "Qual seu animal preferido? "
	resposta: .asciiz "Seu animal favorito é: "
	nome: .space 30
	
.text
	#Imprimir a pergunta
	li $v0, 4		#Imprimir
	la $a0, pergunta	#Chamar vari�vel
	syscall
	
	#Leitura do nome
	li $v0, 8		#Imprimir
	la $a0, nome		#Chamar vari�vel
	li $a1, 30
	syscall
	
	#imprimir sauda��o
	li $v0, 4 		#Imprimir
	la $a0, resposta	#Chamar variavel
	syscall
	
	#Imprimir o nome
	li $v0, 4 		#Imprimir
	la $a0, nome 		#Chamar variavel
	syscall
