
; ESTUDIANTE
	global estudianteCrear
	global estudianteBorrar
	global menorEstudiante
	global estudianteConFormato
	global estudianteImprimir
	
; ALTALISTA y NODO
;	global nodoCrear
;	global nodoBorrar
;	global altaListaCrear
;	global altaListaBorrar
;	global altaListaImprimir

; AVANZADAS
;	global edadMedia
;	global insertarOrdenado
;	global filtrarAltaLista

; AUXILIARES SUGERIDAS
  global string_longitud
  global string_copiar
  global string_menor

; YA IMPLEMENTADAS EN C
	extern string_iguales
	extern insertarAtras
  extern malloc
  extern free
  extern fprintf

; /** DEFINES **/    >> SE RECOMIENDA COMPLETAR LOS DEFINES CON LOS VALORES CORRECTOS
	%define NULL 	0
	%define TRUE 	1
	%define FALSE 	0

	%define ALTALISTA_SIZE     		16
	%define OFFSET_PRIMERO 			0
	%define OFFSET_ULTIMO  			8

	%define NODO_SIZE     			24
	%define OFFSET_SIGUIENTE   		0
	%define OFFSET_ANTERIOR   		8
	%define OFFSET_DATO 			16

	%define ESTUDIANTE_SIZE  		20
	%define OFFSET_NOMBRE 			0
	%define OFFSET_GRUPO  			8
	%define OFFSET_EDAD 			16


section .rodata


section .data
  template: db '%s', 10, 9, '%s', 10, 9,'%d', 10, 0

section .text

;/** FUNCIONES OBLIGATORIAS DE ESTUDIANTE **/    >> PUEDEN CREAR LAS FUNCIONES AUXILIARES QUE CREAN CONVENIENTES
;---------------------------------------------------------------------------------------------------------------

	; estudiante *estudianteCrear( char *nombre, char *grupo, unsigned int edad );
	estudianteCrear:
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14                   ;; FIN INICIALIZACION
    mov r12, rdi               ; r12 = nombre
    mov r13, rsi               ; r13 = grupo 
    mov r14, rdx               ; r14 = edad
    mov rdi, ESTUDIANTE_SIZE
    call malloc                ; malloc(sizeof(estudiante))
    mov rbx, rax               ; rbx = puntero a estudiante
    mov rdi, r12               ; rdi = nombre 
    call string_copiar
    mov qword [rbx + OFFSET_NOMBRE], rax ; e->nombre = string_copiar(nombre)
    mov rdi, r13
    call string_copiar
    mov qword [rbx + OFFSET_GRUPO], rax ; e->grupo = string_copiar(grupo)
    mov rdx, r14
    mov dword [rbx + OFFSET_EDAD], edx ; e->edad = edad
    mov rax, rbx
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret

	; void estudianteBorrar( estudiante *e );
	estudianteBorrar:
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14                   ;; FIN INICIALIZACION

    mov rbx, rdi
    mov rdi, [rbx + OFFSET_NOMBRE]
    call free
    mov rdi, [rbx + OFFSET_GRUPO]
    call free
    mov rdi, rbx
    call free

    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret


	; bool menorEstudiante( estudiante *e1, estudiante *e2 ){
	menorEstudiante:
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14                   ;; FIN INICIALIZACION
    mov r12, rdi               ; r12 <- e1
    mov r13, rsi               ; r13 <- e2
    mov rdi, [r12 + OFFSET_NOMBRE]
    mov rsi, [r13 + OFFSET_NOMBRE]
    call string_menor
    cmp rax, TRUE              ; si string_menor(e1->nombre, e2->nombre)
    je menorEstudiante_true    ; return true
    mov rdi, [r12 + OFFSET_NOMBRE]
    mov rsi, [r13 + OFFSET_NOMBRE]
    call string_iguales
    cmp rax, FALSE             ; si !string_iguales(e1->nombre, e2->nombre)
    je menorEstudiante_false   ; return false
    mov ebx, [r12 + OFFSET_EDAD] ; ebx <- e1->edad 
    cmp ebx, [r13 + OFFSET_EDAD] ; e1->edad <= e2->edad
    jle menorEstudiante_true
    jmp menorEstudiante_false
  menorEstudiante_true:
    mov rax, TRUE
    jmp menorEstudiante_fin
  menorEstudiante_false:
    mov rax, FALSE
  menorEstudiante_fin:
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret


	; void estudianteConFormato( estudiante *e, tipoFuncionModificarString f )
	estudianteConFormato:	
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14                   ;; FIN INICIALIZACION
   
    mov r12, rdi               ; r12 <- estudiante
    mov rbx, rsi               ; rbx <- f

    mov rdi, [r12 + OFFSET_NOMBRE]
    call rbx                   ; f(e->nombre)
    mov rdi, [r12 + OFFSET_GRUPO]
    call rbx                   ; f(e->grupo)

    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret

	
	; void estudianteImprimir( estudiante *e, FILE *file )
	estudianteImprimir:
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14                   ;; FIN INICIALIZACION

    mov rbx, rdi               ; rbx <- e
    mov r12, rsi               ; r12 <- file

    mov rdi, r12              
    mov rsi, template
    mov rdx, [rbx + OFFSET_NOMBRE]
    mov rcx, [rbx + OFFSET_GRUPO]
    mov r8d, [rbx + OFFSET_EDAD]
    mov rax, 0
    call fprintf               ; fprintf(file, temp, e->nombre, e->grupo, e->edad)

    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret



;/** FUNCIONES DE ALTALISTA Y NODO **/    >> PUEDEN CREAR LAS FUNCIONES AUXILIARES QUE CREAN CONVENIENTES
;--------------------------------------------------------------------------------------------------------

	; nodo *nodoCrear( void *dato )
	nodoCrear:
		; COMPLETAR AQUI EL CODIGO

	; void nodoBorrar( nodo *n, tipoFuncionBorrarDato f )
	nodoBorrar:
		; COMPLETAR AQUI EL CODIGO

	; altaLista *altaListaCrear( void )
	altaListaCrear:
		; COMPLETAR AQUI EL CODIGO

	; void altaListaBorrar( altaLista *l, tipoFuncionBorrarDato f )
	altaListaBorrar:
		; COMPLETAR AQUI EL CODIGO

	; void altaListaImprimir( altaLista *l, char *archivo, tipoFuncionImprimirDato f )
	altaListaImprimir:
		; COMPLETAR AQUI EL CODIGO


;/** FUNCIONES AVANZADAS **/    >> PUEDEN CREAR LAS FUNCIONES AUXILIARES QUE CREAN CONVENIENTES
;----------------------------------------------------------------------------------------------

	; float edadMedia( altaLista *l )
	edadMedia:
		; COMPLETAR AQUI EL CODIGO

	; void insertarOrdenado( altaLista *l, void *dato, tipoFuncionCompararDato f )
	insertarOrdenado:
		; COMPLETAR AQUI EL CODIGO

	; void filtrarAltaLista( altaLista *l, tipoFuncionCompararDato f, void *datoCmp )
	filtrarAltaLista:
		; COMPLETAR AQUI EL CODIGO



;/** FUNCIONES AUXILIARES SUGERIDAS **/ 
;----------------------------------------------------------------------------------------------

  ; unsigned char string_longitud( char *s )
  string_longitud:
    push rbp
    mov rbp, rsp
    push rbx                   ;; FIN INICIALIZACION
    push r12
    xor rbx, rbx               ; rbx = i = 0
    xor rax, rax               ; rax = 0
  string_longitud_loop:
    cmp byte [rdi + rbx], 0    ; [rdi + rbx] = *(s+i) = s[i] 
    je string_longitud_fin      
    inc rbx                    ; i++
    inc rax                    ; rax++
    jmp string_longitud_loop  
  string_longitud_fin:
    pop r12
    pop rbx
    pop rbp
    ret


  ; char *string_copiar(char *s)
  string_copiar:
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14                   ;; FIN INICIALIZACION
    call string_longitud       ; s esta en rdi
    mov r12, rdi               ; r12 <- s
    xor rdi, rdi
    mov rdi, rax               ; rdi <- string_longitud(s)
    inc rdi                    ; rdi++
    call malloc                ; rax <- nuevo puntero p
    xor rcx, rcx               ; rcx <- 0 
  string_copiar_loop:
    mov bl, [r12 + rcx]        ; bl <- *(s+i) = s[i]
    cmp bl, 0                  ; if s[i] == '\0': return
    je string_copiar_fin
    mov byte [rax + rcx], bl   ; *(p+i) <- s[i] ~ p[i] <- s[i] 
    inc rcx                    ; i++
    jmp string_copiar_loop
  string_copiar_fin:
    mov byte [rax + rcx], bl   ; *(p+i) <- s[i] = '\0'
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret
   
  ; bool string_menor(char *s1, char *s2)
  string_menor:
    push rbp
    mov rbp, rsp
    push rbx
    push r12
    push r13
    push r14                   ;; FIN INICIALIZACION
    xor rax, rax
    call string_iguales        ; string_iguales(s1, s2)
    cmp byte rax, TRUE         ; if TRUE, listo
    je string_menor_false    
    xor rcx, rcx               ; i <- 0
    dec rcx                    ; i <- -1
  string_menor_loop:
    inc rcx                    ; i++
    mov bl, byte [rdi + rcx]   ; bl <- s1[i]
    cmp bl, byte [rsi + rcx]   ;s1[i] == s2[i] 
    je string_menor_loop       ; if s1[i] == s2[i] , sigo iterando
    jg string_menor_false      ; (dado que es falso y ya teniamos falso en rax)
                               ; CONSULTAR ja/jg, signed/unsigned char
    jmp string_menor_true      ; s1[i] < s2[i]                           
  string_menor_false:
    mov rax, FALSE
    jmp string_menor_fin
  string_menor_true:
    mov rax, TRUE
  string_menor_fin:
    pop r14
    pop r13
    pop r12
    pop rbx
    pop rbp
    ret
   



