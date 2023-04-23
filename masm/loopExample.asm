; LOOP
.8086

.model tiny
.code
org 100h

START:
mov cx, len
mov ah, 2
mov si, offset msg
mov bx, 0



L:
mov dl, [si+bx]
inc bx
int 21h

;or loop L
dec cx
cmp cx, 0
jne L

int 20h

msg db 'hello'
len equ $ - msg

end START
