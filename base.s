.data
    data_array: .word 15, 20, 25, 30
    result_msg: .asciiz "Valor carregado: "
    
.text
.globl main

main:
    # Inicialização
    la $s0, data_array   # Carrega o endereço base do array em $s0
    li $t0, 2            # Índice do elemento a ser carregado
    
    # Carregar valor usando modo base-displacement
    lw $t1, 0($s0)       # Carrega o valor no endereço base + offset 0 em $t1
    
    # Imprimir mensagem
    li $v0, 4            # Carrega o código de syscall para imprimir string
    la $a0, result_msg   # Carrega o endereço da mensagem
    syscall
    
    # Imprimir valor carregado
    li $v0, 1            # Carrega o código de syscall para imprimir inteiro
    move $a0, $t1        # Move o valor de $t1 para o registrador de argumento $a0
    syscall
    
    # Encerramento do programa
    li $v0, 10           # Carrega o código de syscall para encerrar o programa
    syscall

