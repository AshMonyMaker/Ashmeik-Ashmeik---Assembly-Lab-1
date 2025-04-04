# Program Name: helloWorldMain.s
# Author: Ashmek Ashmeik
# Date: 3/13/2025
# Purpose: Prints "Hello, World!" using ARM assembly

.text
.global main	// Define main as the entry point

main:
	# Save return to OS on stack
	SUB sp, sp, #4		// Allocate space on the stack
	STR lr, [sp, #0] 	// Save return address

	# Printing the Message
	LDR r0, =helloWorld	// Load the address of the message into r0
	BL printf		// Call printf function to print the message

	# Return stack and return to OS
	LDR lr, [sp, #0]	// Restore return address
	ADD sp, sp, #4 		// Deallocate stack space
	MOV pc, lr		// Return to OS

.data
helloWorld: .asciz "Hello, World!\n"	// Define the string to print
