; Name: mohamed saeed
; Student ID: 2025002534
; Section:4
; Question: Q3 Count Even and Odd Numbers

LXI H, 2500H   ; Load HL pair with address 2500H (holds array length N >= 1)
MOV C, M       ; Copy array length N into register C as loop counter
MVI D, 00H     ; Initialize register D to 00H (even numbers counter)
MVI E, 00H     ; Initialize register E to 00H (odd numbers counter)

LOOP: INX H    ; Move HL to next array element (starts at 2501H)
MOV A, M       ; Load current unsigned 8-bit element into Accumulator
ANI 01H        ; Mask out bits D7-D1 to isolate Least Significant Bit (D0)
JNZ ODD        ; If D0 = 1 (Zero flag is 0), number is odd -> jump to ODD
INR D          ; Otherwise D0 = 0, number is even -> increment even counter D
JMP NEXT       ; Jump to NEXT to avoid incrementing odd counter

ODD: INR E     ; Increment odd counter E

NEXT: DCR C    ; Decrement remaining elements counter C by 1
JNZ LOOP       ; If C is not zero, continue loop for next element

MOV A, D       ; Move total even count from D to Accumulator
STA 2600H      ; Store even count at memory address 2600H
MOV A, E       ; Move total odd count from E to Accumulator
STA 2601H      ; Store odd count at memory address 2601H
HLT            ; Halt program execution
