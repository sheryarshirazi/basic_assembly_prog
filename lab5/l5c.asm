;Object: 'Write a program to print the ASCII characters.'
.model small					; Using model small
.stack 100h						; Allocate 100 memory location for stack
.code							;Start of code segment



display_char macro
	mov ah,02h
	int 21h
endm

;function to exit Dos
	Dos_exit macro					;macro represent group of instruction
		mov ah,4ch					;exit to Dos
		int 21h
	endm							;end of function 'Dos_exit'
;
main proc
	
	mov Cx,255					; there are 255 ASCII characters
	mov dl,0					; dl display character
	print:						; loop starts from here
		display_char
		inc dl
	loop print					; Execute the For loop
	
	Dos_exit
main endp
end main