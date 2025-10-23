; Program: Hello World in 8086 Assembly
; Author: Abdullah
; Purpose: Display "Hello, World!" on the screen

.model small         ; Use small memory model
.stack 100h          ; Define stack size (256 bytes)

.data
message db 'Hello, World!$'    ; $ = end of string for DOS interrupt

.code
    mov ax, @data    ; Load address of data segment
    mov ds, ax       ; Initialize DS register

    mov ah, 9        ; DOS service to display a string
    lea dx, message  ; Load address of message into DX
    int 21h          ; Call DOS interrupt to print the string

    mov ah, 4Ch      ; DOS service to exit program
    int 21h
end