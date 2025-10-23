; Program: Calculate Gross Salary
; Formula: Gross = Basic + (35% of Basic) + (25% of Basic)
; Instructions used: MUL, ADD
; Author: Abdullah

.model small
.stack 100h
.data
    basic_salary dw 1000        ; Example basic salary = 1000
    da           dw 0           ; Dearness Allowance (35%)
    hra          dw 0           ; House Rent Allowance (25%)
    gross        dw 0           ; Final Gross Salary

.code
main proc
    mov ax, @data
    mov ds, ax                  ; Initialize data segment

    ; ----- Dearness Allowance (35%) -----
    mov ax, basic_salary         ; AX = 1000
    mov bx, 35                   ; BX = 35
    mul bx                       ; DX:AX = AX * BX  => 1000 * 35 = 35000
    mov bx, 100
    div bx                       ; AX = 35000 / 100 = 350
    mov da, ax                   ; DA = 350

    ; ----- House Rent Allowance (25%) -----
    mov ax, basic_salary         ; AX = 1000
    mov bx, 25                   ; BX = 25
    mul bx                       ; DX:AX = 1000 * 25 = 25000
    mov bx, 100
    div bx                       ; AX = 25000 / 100 = 250
    mov hra, ax                  ; HRA = 250

    ; ----- Gross Salary = Basic + DA + HRA -----
    mov ax, basic_salary
    add ax, da
    add ax, hra
    mov gross, ax                ; gross = 1000 + 350 + 250 = 1600

    ; (Optional) End of Program
    mov ah, 4Ch
    int 21h

main endp
end main