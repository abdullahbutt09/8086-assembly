# ⚙️ 8086 Assembly Language — CMP & Jump Instructions Guide

This README provides a complete explanation of **comparison and jump instructions** used in 8086 Assembly Language.  
It helps you understand how assembly performs *if-else* style logic using `CMP` and `Jxx` instructions.

---

## 🧠 1. CMP — Compare Instruction

**Syntax:**
```asm
CMP destination, source
```

### 📝 Description:
- `CMP` subtracts `source` from `destination` internally:  
  ```destination - source```  
- It **does not store the result**, but updates CPU **flags** (Zero, Carry, Sign, Overflow).
- These flags are then used by **conditional jump** instructions.

### 💡 Example:
```asm
MOV AL, 5
MOV BL, 8
CMP AL, BL     ; Compare AL - BL (sets flags)
```

---

## 🚀 2. Conditional Jump Instructions

After a comparison (`CMP`), conditional jumps determine the next step based on **flag values**.

### 🔹 Unsigned Comparison Instructions

| Instruction | Meaning | Condition | Equivalent in C |
|--------------|----------|------------|----------------|
| `JE` / `JZ`  | Jump if Equal / Zero | A == B | `if (A == B)` |
| `JNE` / `JNZ`| Jump if Not Equal / Not Zero | A ≠ B | `if (A != B)` |
| `JA`         | Jump if Above | A > B | `if (A > B)` |
| `JAE`        | Jump if Above or Equal | A ≥ B | `if (A >= B)` |
| `JB`         | Jump if Below | A < B | `if (A < B)` |
| `JBE`        | Jump if Below or Equal | A ≤ B | `if (A <= B)` |

### 🔹 Signed Comparison Instructions

| Instruction | Meaning | Condition | Equivalent in C |
|--------------|----------|------------|----------------|
| `JG`  | Jump if Greater | A > B | `if (A > B)` |
| `JGE` | Jump if Greater or Equal | A ≥ B | `if (A >= B)` |
| `JL`  | Jump if Less | A < B | `if (A < B)` |
| `JLE` | Jump if Less or Equal | A ≤ B | `if (A <= B)` |

---

## 🧩 3. Unconditional Jump

| Instruction | Meaning | Usage |
|--------------|----------|-------|
| `JMP label` | Always jumps to a label | Used to skip or loop over code |

**Example:**
```asm
JMP END_PROGRAM
```

---

## 🧮 4. Example Program — Compare Two Numbers

```asm
.model small
.stack 100h

.data
num1 db 5
num2 db 8
msg1 db 'num1 is greater$'
msg2 db 'num2 is greater$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num1      ; Load num1 → AL
    mov bl, num2      ; Load num2 → BL
    cmp al, bl        ; Compare AL and BL (AL - BL)

    jg NUM1_GREATER   ; Jump if AL > BL

    ; If no jump → AL <= BL → show msg2
    lea dx, msg2
    mov ah, 9
    int 21h
    jmp END_PROGRAM

NUM1_GREATER:
    lea dx, msg1
    mov ah, 9
    int 21h

END_PROGRAM:
    mov ah, 4Ch
    int 21h
main endp
end main
```

---

## 🧭 5. Comparison Flow in Assembly

| Step | Instruction | Description |
|------|--------------|--------------|
| 1️⃣ | `CMP A, B` | Compares two values |
| 2️⃣ | `Jxx label` | Checks CPU flags set by CMP |
| 3️⃣ | `JMP` | Used for unconditional redirection |
| 4️⃣ | `INT 21h` | Used to show output (DOS interrupt) |

---

## 🧠 6. Summary

- `CMP` performs subtraction only to **set flags**.  
- `Jxx` reads those flags to **control program flow**.  
- Together, they simulate **if / else logic** in assembly.  

---

## 🧩 Example Equivalence with C Code

| Assembly Code | C Equivalent |
|----------------|--------------|
| `CMP AL, BL` + `JG L1` | `if (AL > BL)` |
| `CMP AL, BL` + `JE L2` | `if (AL == BL)` |
| `CMP AL, BL` + `JL L3` | `if (AL < BL)` |

---

## 📚 Author

**Name:** Abdullah  
**Topic:** Comparison & Conditional Jump Instructions  
**Platform:** 8086 Assembly Language  
**Goal:** To understand program flow control using `CMP` and `Jxx` instructions.

---