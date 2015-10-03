.model small						;specify the memory model use
.stack 100h							;allocate the 100h memory location for stack
.data								;start the data segment
msg db 'Iqra university$'			;db = define byte string name msg
.code								;start of code segment

;function to exit Dos
	Dos_exit macro					;macro represent group of instruction
		mov ah,4ch					;exit to Dos
		int 21h
	endm							;end of function 'Dos_exit'
;

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
	mov ax,@data			;initialize data segment
	mov ds,ax				;display what in ax
	
	new_line				;call macro new_line 
	
	;printing string
		mov ah,09h				;display string
		mov dx,offset msg		;offset specify the string address
		int 21h
	;
	
	Dos_exit				;call macro dos_exit
main endp
end main