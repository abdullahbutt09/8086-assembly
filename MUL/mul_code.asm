; If the operand is 8 - bit:
; AL multiply operand result stored in AX

; If the operand is 16 - bit:
; AX multiply operand result stored in DX:AX           

MOV AL, 5      ; AL = 5
MOV BL, 4      ; BL = 4
MUL BL        ; AL * BL = 5 * 4 = 20
; Result ? AX = 0014h
; AL = 14h (20), AH = 00h    
                     
MOV AL, 50     ; AL = 50
MOV BL, 10     ; BL = 10
MUL BL         ; 50 * 10 = 500 (01F4h)
; Result ? AX = 01F4h
; AH = 01h (upper byte), AL = F4h (lower byte)

MOV AX, 1000   ; AX = 1000
MOV BX, 10     ; BX = 10
MUL BX         ; 1000 * 10 = 10000 (2710h)
; Result ? DX:AX = 0000:2710
                    
                           