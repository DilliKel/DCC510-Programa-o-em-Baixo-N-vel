.text 
#Atribuindo valores as variaveis registradores
li $a0, 15 # g = $a0 = 15
li $a1, 20 # h = $a1 = 20
li $a2, 10 # i = $a2 = 10
li $a3, 5  # j = $a3 = 5
 
exemplo: #Vamos "Abrir" a pilha
#Cada inteiro requer 4bytes
addi $sp, $sp, -12 #Abrindo 12 de espaço para gravar os inteiros
sw $t1, 8 ($sp) #Salvando os valores de $t1 na posição 8 na pilha - 3
sw $t0, 4 ($sp) #Salvando os valores de $t0 na posição 4 na pilha - 2
sw $s0, 0 ($sp) #Salvando os valores de $s0 na posição 0 na pilha - 1
 
add $t0, $a0, $a1 # (g + h) = 15 + 20 = 35
add $t1, $a2, $a3 # (i + j) = 10 + 5 = 15
sub $s0, $t0, $t1 # (g + h) - (i + j) = 35 – 15 = 20
add $v0, $s0, $zero # f = (g+h) – (i + j);      Atribuindo o valor das operacções a variavel "f"
 
lw $s0, 0 ($sp)
lw $t0, 4 ($sp)
lw $t1, 8 ($sp)
addi $sp, $sp, 12 #Fechar a pilha
 
jr $ra
