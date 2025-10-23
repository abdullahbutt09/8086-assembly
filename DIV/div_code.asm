; If operand is 8-bit: 
; AX ÷ operand -> Quotient in AL, Remainder in AH 

; If operand is 16-bit: 
; DX:AX ÷ operand ? Quotient in AX, Remainder in DX
                  
;MOV AL, 20      ; Dividend (low byte)
;MOV BL, 5       ; Divisor
;DIV BL          ; AX ÷ BL ? 20 ÷ 5
; Quotient -> AL = 4
; Remainder -> AH = 0
                                              
;MOV AL, 22
;MOV BL, 5
;DIV BL
; 22 ÷ 5 = 4 remainder 2
; AL = 4 -> Quotient
; AH = 2 -> Remainder

;MOV AX, 1000
;MOV BX, 10
;MOV DX, 0        ; Always clear DX before 16-bit division
;DIV BX           ; DX:AX ÷ BX = 1000 ÷ 10
; AX = 100  (Quotient)
; DX = 0    (Remainder)
                                        
MOV AX, 1000
MOV BX, 6
MOV DX, 0
DIV BX
; 1000 ÷ 6 = 166 remainder 4
; AX = 166 (Quotient)
; DX = 4   (Remainder)
