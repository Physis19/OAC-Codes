.data
    result_msg: .asciiz "Resultado: "
    
.text
.globl main

main:
    # Inicialização
    li $t0, 10       # Carrega o valor 10 em $t0
    
    # Adição usando modo imediato
    addi $t1, $t0, 5  # Adiciona o valor imediato 5 a $t0 e armazena o resultado em $t1
    
    # Imprimir resultado
    li $v0, 4        # Carrega o código de syscall para imprimir string
    la $a0, result_msg   # Carrega o endereço da mensagem
    syscall
    
    li $v0, 1        # Carrega o código de syscall para imprimir inteiro
    move $a0, $t1    # Move o valor de $t1 para o registrador de argumento $a0
    syscall
    
    # Encerramento do programa
    li $v0, 10       # Carrega o código de syscall para encerrar o programa
    syscall

