MOV AL, 5       ; AL = 5
MOV BL, 3       ; BL = 3
ADD AL, BL      ; AL = AL + BL ? AL = 5 + 3 = 8   

MOV AL, 10      ; AL = 10
ADD AL, 5       ; AL = AL + 5 ? AL = 15 

MOV AX, 1234H   ; AX = 1234H
ADD AX, 0001H   ; AX = 1235H        

MOV AL, 255     ; 255 = FFH
ADD AL, 1       ; AL = FFH + 1 ? 00H (Carry flag = 1)