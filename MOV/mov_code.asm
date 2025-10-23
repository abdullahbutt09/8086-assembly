;MOV destination, source    

MOV AX, 12345     ; Decimal 12345 = 3039H in hexadecimal
                   ; AX = 3039H
                   ; AH = 30H ? High byte (MSB)
                   ; AL = 39H ? Low byte (LSB)
                   ; Binary = 0011 0000 0011 1001
                   ;          [AH:AL] = [30H][39H]

;MOV AL, 5
;MOV BL, 10
;MOV CL, AL
;MOV AL, BL  

;MOV AL, 5      ; AL = 5
;MOV BX, 1234H  ; BX = 1234h (hexadecimal)     

;MOV BL, AL
;MOV DX, BX  

;MOV AL, 10H
;MOV AH, 20H
;MOV BX, AX    

MOV AX, 1234H    ; AX = 1234H (16-bit value)
                  ; Split into two 8-bit parts:
                  ; AH = 12H ? High byte (Most Significant Byte)
                  ; AL = 34H ? Low byte (Least Significant Byte)
                  ; Binary form: 1234H = 0001 0010 0011 0100
                  ;               [AH:AL] = [12H][34H]
