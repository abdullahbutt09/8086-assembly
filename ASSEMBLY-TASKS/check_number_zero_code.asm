.model small
.stack 100h

.data

number db 0   
msg1 db 'Number is zero$'
msg2 db 'Number is not zero$'

main proc

    mov ax, @data
    mov ds, ax        
    
    mov al, [number]
    cmp al, 0
    
    jz If_Zero
    
    mov dx, offset msg2
    mov ah, 9h
    int 21h
    
    jmp DONE

If_Zero:
    mov dx, offset msg1
    mov ah, 9h
    int 21h
    
DONE: 
    mov ah, 4Ch
    int 21h
    ;HLT  
main endp
end main