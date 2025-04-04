# Program Name: courseInfo.s
# Author: Ashmeik Ashmeik
# Date: 3/18/2025
# Purpose: Practicing Assembly Programming



        .data
message: .asciz "CS-118: Intro to Assembly Language (9AM-12PM)\nFinal Exam: May 20, 2025 (8AM-10AM)\nPaul Raupach\nOffice Hours: Mon-Thurs 4:30PM-5:30PM Room: 1201M\nAshmeik Ashmeik\nJunior Year\nCS-102: Intro to Computer Science\nSpring 2024\nGeri Lamble\n\nCS-113: Discrete Structures\nFall 2024\nWilliam Lam\n\nCS-124: Programming with Data Structures\nSpring 2025\nMichael Mcthrow\n"

msg_len: .word 342     // 🧠 Replace 342 with actual length (include \n and spaces)

	

.text
.global main

main:
	# System call: write
	MOV r7, #4		// System number for write
	MOV r0, #1		// File descriptor 1 for stdout
	LDR r1, =message	// Load address of message into r1
	LDR r2, =msg_len	// Load the length properly
	LDR r2, [r2]		// Get the value at that address
	SWI 0			// Software Interrupt (do it!)

	# system call : Exit Safely
	MOV r7, #1		// System number for exit
	MOV r0, #0		// exit status (like return 0 in C program main)
	SWI 0			// Software Interrupt (Make is so)
