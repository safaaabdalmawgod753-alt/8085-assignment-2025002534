; Name: mohamed saeed
; Student ID: 2025002534
; Section: 4
; Question: Q1 8-Bit Addition with Carry

LXI H, 2500H   ; Load HL pair with address 2500H (first 8-bit number)
MOV A, M       ; Load first unsigned 8-bit number from 2500H into Accumulator
INX H          ; Increment HL to point to 2501H (second 8-bit number)
ADD M          ; Add second number from 2501H to Accumulator (updates Carry flag)
INX H          ; Increment HL to point to 2502H (sum storage address)
MOV M, A       ; Store the 8-bit sum at 2502H
MVI A, 00H     ; Clear Accumulator to prepare carry output value
ACI 00H        ; Add immediate 00H with Carry flag -> A = 01H if carry, else 00H
INX H          ; Increment HL to point to 2503H (carry storage address)
MOV M, A       ; Store carry status (00H or 01H) at 2503H
HLT            ; Halt program execution
