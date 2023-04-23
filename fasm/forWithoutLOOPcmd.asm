org 100h
mov bl, 10h
mov bh, 1
mov ah, 1
call for_loop


ret

for_loop proc near
    call print_msg
    inc bh
    mov al, bh
    cmp al, cl 
    jne for_loop
    ret
for_loop endp

message: db 'Loop message!$'

print_msg PROC near
    MOV AH, 09h
    INT 21h
    ret    
print_msg ENDP

