
main:

	li $t1, 1000

	# Endereço do valor 1000 na memória.
	addi $t2, $pc, 16

	# Carrega o valor de R1 na memória no endereço especificado por R2.
	sw $t1, 0($t2)
