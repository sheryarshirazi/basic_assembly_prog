;Object: 'Write a program that prints a character 100 times using linefeed and carriage return'
.model small						;specify the memory model use
.stack 100h							;allocate the 100h memory location for stack
.code								;start of code segment

;function to exit Dos
	Dos_exit macro					;macro represent group of instruction
		mov ah,4ch					;exit to Dos
		int 21h
	endm							;end of function 'Dos_exit'
;
;function to print character
	p_ch macro
		mov ah,02h
		mov dl,'S'
		int 21h
	endm

;function for new line
	new_line macro			;macro invoked for line feed & carriage return
		mov ah,02h			;Display a char
		mov dl,0ah			;predefine carriage return
		int 21h
		mov dl,0dh 			;predefine line feed
		int 21h
	endm
;

;start of procedure 'main'
main proc
	mov ah,02h
	mov cx,100
	myLoop:
		p_ch
		new_line
	loop myLoop
		
	Dos_exit				;call macro dos_exit
main endp
end main