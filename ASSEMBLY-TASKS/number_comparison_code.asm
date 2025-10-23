.model small
.stack 100h

.data
num1 db 5
num2 db 1
msg1 db 'num1 is greater$'
msg2 db 'num2 is greater$'

.code
main proc
    mov ax, @data     ; Load data segment
    mov ds, ax

    mov al, num1      ; AL = num1
    mov bl, num2      ; BL = num2
    cmp al, bl        ; Compare num1 and num2

    jg greater        ; Jump if num1 > num2

    ; If num2 > num1
    mov dx, offset msg2
    mov ah, 9
    int 21h
    jmp done

greater:
    mov dx, offset msg1
    mov ah, 9
    int 21h

done:
    mov ah, 4Ch       ; Exit program
    int 21h
main endp
end main
