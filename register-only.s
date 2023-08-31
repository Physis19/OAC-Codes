.data
    result_msg: .asciiz "Resultado: "
    
.text
.globl main

main:
    # Inicialização
    li $t0, 10       # Carrega o valor 10 em $t0
    li $t1, 20       # Carrega o valor 20 em $t1
    
    # Adição usando modo de endereçamento register-only
    add $t2, $t0, $t1   # Soma $t0 e $t1 e armazena o resultado em $t2
    
    # Imprimir resultado
    li $v0, 4        # Carrega o código de syscall para imprimir string
    la $a0, result_msg   # Carrega o endereço da mensagem
    syscall
    
    li $v0, 1        # Carrega o código de syscall para imprimir inteiro
    move $a0, $t2    # Move o valor de $t2 para o registrador de argumento $a0
    syscall
    
    # Encerramento do programa
    li $v0, 10       # Carrega o código de syscall para encerrar o programa
    syscall
