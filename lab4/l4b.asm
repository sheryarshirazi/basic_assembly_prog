;Object: 'Print multiple strings with new line using macro'

.model small							;specify the memory model use
.stack 100h								;allocate the 100h memory location for stack
.data									;start the data segment

;storing strings in variables
	msg0 db 'Sheryar Shirazi$'			;db = define byte string name msg0
	msg1 db 'XI semester$'
	msg2 db 'MPALP$'
	msg3 db 'Lab task no 4.2$'
	msg4 db '20/Nov/2014$'
.code

;function to exit Dos
	dos_exit macro					;macro represent group of instruction
		mov ah,4ch					;exit to Dos
		int 21h
	endm							;end of function 'Dos_exit'
;
;function for new line
	new_line macro					;macro invoked for line feed & carriage return
		mov ah,02h					;Display a char
		mov dl,0ah					;predefine carriage return
		int 21h
		mov dl,0dh 					;predefine line feed
		int 21h
	endm
;

;start of procedure 'main'
main proc
	;one time
		mov ax,@data					;initialize data segment
		mov ds,ax						;display what in ax
		new_line						;call macro new_line
		;printing string 'msg0'
			mov ah,09h
			mov dx,offset msg0
			int 21h
		;
	;
	
	;second time
		mov ax,@data					;initialize data segment
		mov ds,ax						;display what in ax
		new_line						;call macro new_line
		;printing string 'msg1'
			mov ah,09h
			mov dx,offset msg1
			int 21h
		;
	;
	
	;third time
		mov ax,@data					;initialize data segment
		mov ds,ax						;display what in ax
		new_line						;call macro new_line
		;printing string 'msg2'
			mov ah,09h
			mov dx,offset msg2
			int 21h
		;
	;
	
	;fourth time
		mov ax,@data					;initialize data segment
		mov ds,ax						;display what in ax
		new_line						;call macro new_line
		;printing string 'msg3'
			mov ah,09h
			mov dx,offset msg3
			int 21h
		;
	;
	
	;fifth time
		mov ax,@data					;initialize data segment
		mov ds,ax						;display what in ax
		new_line						;call macro new_line
		;printing string 'msg4'
			mov ah,09h
			mov dx,offset msg4
			int 21h
		;
	;
	dos_exit							;calling dos_exit macro to exit dos
main endp
end main