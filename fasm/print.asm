org 100h

MOV DX, message
CALL print_msg

RET

;SAVE STRING TO RAM
message: db 'Test msg!$'

;PRINT SYMBOL FROM DX REGISTER 
print_msg PROC near
    MOV AH, 09h
    INT 21h
    ret    
print_msg ENDP
