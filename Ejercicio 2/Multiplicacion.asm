section .data
    salto_linea db 10               
section .bss
    resultado_texto resb 20         
section .text
    global _inicio

_inicio:
    mov al, 10                      
    mov bl, 10                     

    mul bl                          

    movsx rsi, ax                   
    mov rdi, resultado_texto        
    call mostrar_numero             

    mov rax, 1
    mov rdi, 1
    mov rsi, salto_linea
    mov rdx, 1
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall

mostrar_numero:
    push rbx
    push rcx
    push rdx
    push rsi
    push rdi
    mov rax, rsi
    mov rcx, 0
    mov rbx, 10
    mov r8, rdi

    cmp rax, 0
    jge .convertir_numero
    neg rax
    mov byte [rdi], '-'
    inc rdi

.convertir_numero:
    cmp rax, 0
    jne .extraer_numero
    mov byte [rdi], '0'
    inc rdi
    jmp .imprimir_numero

.extraer_numero:
    xor rdx, rdx
    div rbx
    add dl, '0'
    push rdx
    inc rcx
    test rax, rax
    jnz .extraer_numero

.imprimir_numero:
    cmp rcx, 0
    je .fin_del_programa

.mostrar_digitos:
    pop rax
    mov [rdi], al
    inc rdi
    dec rcx
    jnz .mostrar_digitos

.fin_del_programa:
    mov rdx, rdi
    sub rdx, r8

    mov rax, 1
    mov rdi, 1
    mov rsi, r8
    syscall

    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rbx
    ret
