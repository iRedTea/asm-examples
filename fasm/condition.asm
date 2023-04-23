org 100h

MOV AL, 1
MOV BL, 1
CALL cond_check

RET
truemsg: db 'Condition is true!$'
falsemsg: db 'Condition is false!$'

cond_check PROC NEAR
    CMP AL, BL
    JE true_proc
    JMP false_proc
    RET
cond_check ENDP

true_proc PROC NEAR
    MOV DX, truemsg
    JMP print_msg
    RET
true_proc ENDP

false_proc PROC NEAR
    MOV DX, falsemsg
    JMP print_msg
    RET
false_proc ENDP

;PRINT SYMBOL FROM DX REGISTER 
print_msg PROC near
    MOV AH, 09h
    INT 21h
    ret    
print_msg ENDP