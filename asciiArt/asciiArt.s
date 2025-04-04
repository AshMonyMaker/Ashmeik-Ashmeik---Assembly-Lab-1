# File: asciiArt.s
# Author: Ashmeik Ashmeik
# Date: April 3, 2025
# Purpose: Display a rocket ship using ARM Assembly

.data
line1: .asciz "   /\\\n"              @ Top of rocket
line2: .asciz "  /  \\\n"             @ Mid-cone
line3: .asciz " | 🚀 |\n"             @ Rocket body
line4: .asciz "  ||||\n"              @ Engine fire
line5: .asciz " /_||_\\\n"            @ Base of rocket

.text
.global main

main:
        @ Print line 1
        MOV r7, #4
        MOV r0, #1
        LDR r1, =line1
        MOV r2, #6
        SWI 0

        @ Print line 2
        MOV r7, #4
        MOV r0, #1
        LDR r1, =line2
        MOV r2, #8
        SWI 0

        @ Print line 3
        MOV r7, #4
        MOV r0, #1
        LDR r1, =line3
        MOV r2, #10
        SWI 0

        @ Print line 4
        MOV r7, #4
        MOV r0, #1
        LDR r1, =line4
        MOV r2, #7
        SWI 0

        @ Print line 5
        MOV r7, #4
        MOV r0, #1
        LDR r1, =line5
        MOV r2, #9
        SWI 0

        @ Exit
        MOV r7, #1
        MOV r0, #0
        SWI 0

