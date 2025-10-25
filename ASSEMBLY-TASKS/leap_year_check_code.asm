.model small
.stack 100h

.data
    year dw 2005
    msg1 db 'Leap year$'
    msg2 db 'Not Leap year$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ax, year        ; AX = 2004
    mov bx, 4           ; divisor = 4
    xor dx, dx          ; clear DX before 16-bit div
    div bx              ; AX / BX ? quotient in AX, remainder in DX

    cmp dx, 0
    jz leap_year        ; if remainder = 0 ? leap year

not_leap:
    mov dx, offset msg2
    mov ah, 9
    int 21h
    jmp done

leap_year:
    mov dx, offset msg1
    mov ah, 9
    int 21h

done:
    mov ah, 4Ch
    int 21h

main endp
end main