# 🧠 8086 Registers — Complete Notes

8086 microprocessor has several **general-purpose registers** that can store data temporarily during program execution.  
Each 16-bit register can also be **split into two 8-bit parts** — a **High (H)** and a **Low (L)** byte.

---

## 📘 General Purpose Registers Overview

| Register | Split Parts | Common Use | Description |
|-----------|-------------|-------------|--------------|
| **AX** | AH (high), AL (low) | **Accumulator Register** | Used for arithmetic, logic, and I/O operations. Many instructions **implicitly use AX**. For example: `MUL BL` → result stored in AX automatically. |
| **BX** | BH, BL | **Base Register** | Often used to hold **base addresses** for memory access. In indirect addressing (like `[BX]`), BX acts as a pointer. |
| **CX** | CH, CL | **Count Register** | Used as a **counter** in loops and iterations. Instructions like `LOOP`, `REP`, and shifts (`SHR`, `SHL`) depend on CX/CL. |
| **DX** | DH, DL | **Data Register** | Used for **I/O operations**, and also holds **high word in multiplication/division** (e.g., `MUL BX` → DX:AX stores 32-bit result). |

---

## 🧩 Detailed Notes

### 🔹 AX (Accumulator)
- The most important register.
- Used in most arithmetic and logic operations.
- Example:
  ```asm
  MOV AL, 10
  ADD AL, 20   ; AX stores result → 30
  ```

### 🔹 BX (Base)
- Mainly used for **addressing memory**.
- Commonly combined with **segment registers** (like DS) for data access.
- Example:
  ```asm
  MOV BX, 2000H
  MOV AL, [BX] ; Access memory at address 2000H
  ```

### 🔹 CX (Count)
- Used in **looping and shifting**.
- Automatically decremented by the `LOOP` instruction.
- Example:
  ```asm
  MOV CX, 5
  LOOP_START:
    ADD AL, 1
    LOOP LOOP_START ; repeats until CX = 0
  ```

### 🔹 DX (Data)
- Works with AX for **multiplication and division**.
- Used in **I/O port access** (for example, `IN` and `OUT` instructions).
- Example:
  ```asm
  MOV AX, 1234H
  MOV DX, 0000H
  DIV BX        ; DX:AX / BX → result in AX, remainder in DX
  ```

---

## ⚙️ Quick Summary

| Register | Size | Primary Role | Example Use |
|-----------|------|---------------|--------------|
| **AX** | 16-bit | Arithmetic / logic accumulator | `ADD AX, BX` |
| **BX** | 16-bit | Memory base pointer | `MOV AL, [BX]` |
| **CX** | 16-bit | Loop counter | `LOOP AGAIN` |
| **DX** | 16-bit | Data register (I/O, remainder) | `MUL BX` or `DIV BX` |

---

## 💡 Tips
- `AX` is like the **main worker**.
- `BX` is the **address helper**.
- `CX` is the **loop counter**.
- `DX` is the **assistant for big numbers and I/O**.