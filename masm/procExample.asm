;stdcall example

.model tiny
.code

org 100h

START:

mov ax, 10
push ax    ;save local arg of current
mov ax, 5  ;arg 1
mov bx, 3  ;arg 2
push bx    ;transfer 2 arg
push ax    ;transfer 1 arg
call sum   ;call sum proc
mov cx, ax
pop ax

mov dx, ax
MOV AH, 09h
INT 21h
ret


sum proc NEAR ;2 args -> a, b    ret to ax
   push bp
   mov bp, sp 
   sub sp, 4         ;init memory for local vars
   mov [bp-2], ax    ;set local var 1
   mov [bp-4], bx    ;set local var 2
   mov ax, [bp+4]    ;get 1 param
   mov bx, [bp+6]    ;get 2 param
   add ax, bx        ;
   mov sp, bp        ;sp to pos before local vars       
   pop bp            ;bp to pos of last proc
   ret 4             ;retn 4
sum endp

end START