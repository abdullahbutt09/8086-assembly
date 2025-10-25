.model small
.stack 100h

.data
num1 db 4
num2 db 3
num3 db 5

msg1 db 'num1 is greatest$'
msg2 db 'num2 is greatest$'
msg3 db 'num3 is greatest$'

.code
main proc

    mov ax, @data
    mov ds, ax

    mov al, [num1]     ; AL = num1
    mov bl, [num2]     ; BL = num2

    cmp al, bl
    jg compare_num1_num3   ; if num1 > num2
    mov al, bl             ; AL = num2
    mov cl, 2              ; remember num2 is current greatest
    jmp compare_with_num3

compare_num1_num3:
    mov cl, 1              ; remember num1 is current greatest

compare_with_num3:
    mov bl, [num3]
    cmp al, bl
    jg print_result        ; if current (AL) > num3, skip update
    mov cl, 3              ; else num3 is greatest

print_result:
    cmp cl, 1
    je PRINT1
    cmp cl, 2
    je PRINT2
    cmp cl, 3
    je PRINT3

PRINT1:
    mov dx, offset msg1
    mov ah, 9
    int 21h
    jmp DONE

PRINT2:
    mov dx, offset msg2
    mov ah, 9
    int 21h
    jmp DONE

PRINT3:
    mov dx, offset msg3
    mov ah, 9
    int 21h

DONE:
    mov ah, 4Ch
    int 21h

main endp
end main