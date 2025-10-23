; If the operand is 8 - bit:
; AL multiply operand result stored in AX

; If the operand is 16 - bit:
; AX multiply operand result stored in DX:AX           

MOV AL, 5      ; AL = 5
MOV BL, 4      ; BL = 4
MUL BL        ; AL * BL = 5 * 4 = 20
; Result ? AX = 0014h
; AL = 14h (20), AH = 00h                  