.model small
.stack
.data
menu1 db "INSTITUTO NACIONAL DE ECOLOGIA$"
menu2 db "Y CAMBIO CLIMATICO"
menu3 db "TABLERO$"
menu4 db "1.-Acciones y Programas$"
menu5 db "2.-Blogs$"
menu6 db "3.-Gaceta climatica$"
menu7 db  "9.- Salir$"

 sub3 db "ACCIONES Y PROGRAMAS$"
 sub4 db "9.-Regresa al tablero$"
 sub5 db "Digite la opcion:_$"
 
 sub6 db "BLOGS$"
 sub7 db "GACETA CLIMATICA$"
 menu8 db "Digite la opcion:_$"
 sub9 db "Digite el numero de la opcion deseada: $"

 
 sub8 db "***Proceso terminado***$"
N1 DB 0
.code
main:
    mov ax, @data
    mov ds, ax 

    ; ---------- MENU PRINCIPAL ----------

MENU1:
        mov ah,06h
    mov al,0
    mov bh,07h
    mov cx,0
    mov dx,184FH 
    int 10h
    
    mov ah,02h 
    mov bh,0
    mov dh,2
    mov dl,25
    int 10h
   
     mov ah,06h
     mov bh,2fh          ;cambia color de letra y pantalla
    mov cx, 0000h       ;inicia fila(00) y columna(00) a colorear
    mov dx,1819h        ;asta fila 24(18h), columna 25(19h)
    int 10h
    
    mov ah,06h
    mov bh,4fh          ;cambia color de letra y pantalla
    mov cx,0019h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
    
      mov ah,06h
      mov bh,6fh          ;cambia color de letra y pantalla
      mov cx,0036h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
   
   
   
    lea dx, menu1
    mov ah,09h
    int 21h
    mov ah,02h
    mov bh,0
    mov dh,3 
    mov dl,27
    int 10h 
    lea dx,menu2
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,5
    mov dl,30
    int 10h
    lea dx,menu3
    mov ah,09h
    int 21h

    mov ah,02h
    mov dh,0
    mov dh,7
    mov dl,30
    int 10h
    lea dx,menu4
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,8
    mov dl,30
    int 10h
    lea dx,menu5
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,9
    mov dl,30
    int 10h
    lea dx,menu6
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,10
    mov dl,30
    int 10h
    lea dx,menu7
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,11
    mov dl,30
    int 10h
    lea dx,menu8
    mov ah,09h
    int 21h
 mov ah,02h
    mov bh,0
    mov dh,17
    mov dl,35
    int 10h
     
    mov ah, 1
    int 21h
    sub al,30h
    mov N1, AL
    
    CMP N1,1
    jz  MENU2
    CMP N1,2
    jz  XMENU3
  CMP N1,3
    jz  XMENU4
    CMP N1,9
  jz XFIN
XFIN:
JMP FIN  
XMENU3:
    JMP MENU3
 
XMENU4:
   JMP MENU4

   
MENU2:
    mov ah,06h
    mov al,0
    mov bh,07h
    mov cx,0
    mov dx,184FH 
    int 10h

    mov ah,06h
     mov bh,7fh          ;cambia color de letra y pantalla
    mov cx, 0000h       ;inicia fila(00) y columna(00) a colorear
    mov dx,1819h        ;asta fila 24(18h), columna 25(19h)
    int 10h
    
    mov ah,06h
    mov bh,8fh          ;cambia color de letra y pantalla
    mov cx,0019h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
    
      mov ah,06h
      mov bh,4fh          ;cambia color de letra y pantalla
      mov cx,0036h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
    
    mov ah,02h 
    mov bh,0
    mov dh,2
    mov dl,25
    int 10h
    lea dx, menu1
    mov ah,09h
    int 21h
    mov ah,02h
    mov bh,0
    mov dh,3 
    mov dl,27
    int 10h 
    lea dx,menu2
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,5
    mov dl,30
    int 10h

    lea dx,sub3
    mov ah,09h
    int 21h

    mov ah,02h
    mov dh,0
    mov dh,7
    mov dl,30
    int 10h
    
lea dx,sub4
mov ah,09h
int 21h

mov ah,02h
 mov bh,0
 mov dh,9
mov dl,30     
int 10h
lea dx,sub5
mov ah,09h
int 21h

mov ah,02h
 mov bh,0
 mov dh,17
mov dl,30     
int 10h

    
    mov ah, 1
    int 21h
    sub al,30h
    mov N1, AL
    
    CMP N1,9
    jz  MENUD
    jmp FIN
   
MENUD:
  JMP MENU1 

  
MENU3:
  mov ah,06h
    mov al,0
    mov bh,07h
    mov cx,0
    mov dx,184FH 
    int 10h

     mov ah,06h
        mov bh,2fh          ;cambia color de letra y pantalla
    mov cx, 0000h       ;inicia fila(00) y columna(00) a colorear
    mov dx,1819h        ;asta fila 24(18h), columna 25(19h)
    int 10h
    
    mov ah,06h
    mov bh,3fh          ;cambia color de letra y pantalla
    mov cx,0019h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
    
      mov ah,06h
      mov bh,6fh          ;cambia color de letra y pantalla
      mov cx,0036h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
    
    mov ah,02h 
    mov bh,0
    mov dh,2
    mov dl,25
    int 10h
     lea dx, menu1
    mov ah,09h
    int 21h
    mov ah,02h
    mov bh,0
    mov dh,3 
    mov dl,27
    int 10h 
    lea dx,menu2
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,5
    mov dl,30
    int 10h

    lea dx,sub6
    mov ah,09h
    int 21h

    mov ah,02h
    mov dh,0
    mov dh,7
    mov dl,30
    int 10h
    
    lea dx,sub4
mov ah,09h
int 21h

mov ah,02h
 mov bh,0
 mov dh,9
mov dl,30     
int 10h
lea dx,sub5
mov ah,09h
int 21h

mov ah,02h
 mov bh,0
 mov dh,17
mov dl,30     
int 10h



    mov ah,02h
    mov bh,0
    mov dh,14
    mov dl,60 
    int 10h
    
    
     mov ah, 1
    int 21h
    sub al,30h
    mov N1, AL
    
    CMP N1,9
    jz  ALMENU
    jmp FIN
   
ALMENU:
  JMP MENU1 
MENU4:
  mov ah,06h
    mov al,0
    mov bh,07h
    mov cx,0
    mov dx,184FH 
    int 10h

     mov ah,06h
        mov bh,7fh          ;cambia color de letra y pantalla
    mov cx, 0000h       ;inicia fila(00) y columna(00) a colorear
    mov dx,1819h        ;asta fila 24(18h), columna 25(19h)
    int 10h
    
    mov ah,06h
    mov bh,1fh          ;cambia color de letra y pantalla
    mov cx,0019h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
    
      mov ah,06h
      mov bh,3fh          ;cambia color de letra y pantalla
      mov cx,0036h        ;inicio de fila (00) y columna (25)
    mov dx,184fh        ;hasta fila 24 (18), columna 80(4f)
    int 10h
    
    
    mov ah,02h 
    mov bh,0
    mov dh,2
    mov dl,25
    int 10h
    lea dx, menu1
    mov ah,09h
    int 21h
    mov ah,02h
    mov bh,0
    mov dh,3 
    mov dl,27
    int 10h 
    lea dx,menu2
    mov ah,09h
    int 21h

    mov ah,02h
    mov bh,0
    mov dh,5
    mov dl,30
    int 10h

    lea dx,sub7
    mov ah,09h
    int 21h

    mov ah,02h
    mov dh,0
    mov dh,7
    mov dl,30
    int 10h
    
    lea dx,sub4
mov ah,09h
int 21h

mov ah,02h
 mov bh,0
 mov dh,9
mov dl,30     
int 10h
lea dx,sub5
mov ah,09h
int 21h

mov ah,02h
 mov bh,0
 mov dh,17
mov dl,30     
int 10h
    
    
     mov ah, 1
    int 21h
    sub al,30h
    mov N1, AL
    
    CMP N1,9
    jz  MENUZ
   jmp FIN
   
MENUZ:
  JMP MENU1 


FIN:    
    
   mov ah,06h
    mov al,0
    mov bh,07h
    mov cx,0
    mov dx,184FH 
    int 10h
 
 
 
 
  mov ah, 02h
   mov bh, 0
   mov dh, 8
   mov dl, 24
   int 10h
   Lea dx, sub8
   mov ah, 09h
   int 21h
   
   mov ax, 4C00h
    int 21h


    
    
    
    end main

