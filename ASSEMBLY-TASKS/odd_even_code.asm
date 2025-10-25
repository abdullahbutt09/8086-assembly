.model small
.stack 100h

.data

number db 10

msg1 db 'number is even$'
msg2 db 'number is odd$'

main proc
    
    mov ax, @data
    mov ds, ax
    
    mov al, [number]   
    mov ah, 0
    
    mov bl, 2
    
    div bl
    
    cmp ah, 0
    
    jz if_even
    
    mov dx, offset msg2
    mov ah, 9h
    int 21h
             
    jmp done 
    
if_even:
    mov dx, offset msg1
    mov ah, 9h
    int 21h

done:
    mov ah, 4Ch
    int 21h 
    
main endp
end main