; Name: mohamed saeed
; Student ID: 2025002534
; Section: 4
; Question: Q2 1's and 2's Complement

LDA 2500H      ; Load 8-bit number from memory address 2500H into Accumulator
CMA            ; Complement Accumulator bits to get 1's complement
STA 2501H      ; Store 1's complement at memory address 2501H
INR A          ; Increment Accumulator by 1 to get 2's complement (1's comp + 1)
STA 2502H      ; Store 2's complement at memory address 2502H
HLT            ; Halt program execution
