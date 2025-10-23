;SUB -> destination, source   

MOV AL, 10      ; AL = 10
MOV BL, 3       ; BL = 3
SUB AL, BL      ; AL = AL - BL ? AL = 10 - 3 = 7  

MOV AL, 20
SUB AL, 5       ; AL = 20 - 5 = 15   

MOV AX, 1234H
SUB AX, 0010H   ; AX = 1224H        

MOV AL, 5        ; AL = 05H             
SUB AL, 10       ; AL = 05H - 0AH = -5
                  ; Since AL is 8-bit (0–255), it can’t store negative numbers
                  ; CPU wraps around ? -5 becomes 251 decimal = FBH (1111 1011b)
                  ; AL = FBH, Carry Flag = 1 (borrow occurred)         

MOV AL, 9
SUB AL, 9       ; AL = 0 ? Zero Flag = 1                