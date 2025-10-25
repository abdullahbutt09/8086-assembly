.model small
.stack 100h

.data  

number db 5;

    msg1 db 'number is divided by 3$'
    msg2 db 'number is not divided by 3$'

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov al, [number] 
    mov ah, 0
    
    mov bl, 3
    
    div bl
    
    cmp ah, 0
    
    jz if_divided
    
    mov dx, offset msg2
    mov ah, 9h
    int 21h
    
    ;the above 3 lines 22 23 24 are standard for printing message
    
jmp done

done:  
    mov ah, 4Ch
    int 21h
    ;hlt

if_divided:
    mov dx, offset msg1
    mov ah, 9h
    int 21h

main endp
end main