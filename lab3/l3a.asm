;Object: 'Write a program to display a string.'

.model small				;specify the model used
.stack 100h					;allocate the 100h memory allocation for stack
.data						;Start the data segment
_name db 'Shery$'			;specify string: define byte string variable '_name'
.code						;start code segment

;start of procedure
main proc

	;printing string
		mov ax,@data			;initialized data segment
		mov ds,ax
		mov ah,09h				;display string
		mov dx,offset _name		;offset specify string address
		int 21h					;interrupt
	;
	;return to Dos
		mov ah,4ch	;Dos Exit function
		int 21h		;exit
	;

main endp					;end procedure
end main					;end main
