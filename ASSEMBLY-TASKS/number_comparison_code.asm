.model small
.stack 100h

.data

num1 db 0
num2 db 10

msg1 db 'num1 is greater$'
msg2 db 'num2 is greater$'

.code
main proc 
    
mov ax, @data
mov ds, ax

mov al, [num1]
mov bl, [num2] 

cmp al, bl

jg GREATER

mov dl, 0   

mov dx, offset msg2
mov ah, 9h
int 21h   

jmp DONE
       
GREATER:

mov dl, 1
   
mov dx, offset msg1
mov ah,09h
int 21h   
       
DONE:  

;mov ah, 4Ch
;int 21h

HLT

main endp
end main         