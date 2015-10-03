;Object: 'Write a program to display multiple strings on the screen.'

.model small						;specify the model used
.Stack 100h							;allocate the 100h memory allocation for stack
.data								;Start the data segment
;storing strings in variables
	naam	db 'Sheryar Shirazi$'	;specify strings
	father	db 'Shafiq$'
	id		db '0903$'
	uni		db 'IQRA UNIVERSITY$'

.code								;start code segment
main proc
	
	;start of printing naam
		mov ax,@data				;initialize data segment
		mov ds,ax
		mov ah,09h
		mov dx,offset naam 			;offset specify the string address
		int 21h
	; end of printing naam
	
	;go to a new line
		mov ah,02h				;new line
		mov dl,0dh 				;carriage return
		int 21h					;execute carriage return
		mov dl,0ah 				;line feed 
		int 21h					;end of carriage return
	;
	
	; start of printing father
		mov ax,@data
		mov ds,ax
		mov ah,09h
		mov dx,offset father 
		int 21h
	;end of printing father

	;go to a new line
		mov ah,02h				;new line
		mov dl,0dh 				;carriage return
		int 21h					;execute carriage return
		mov dl,0ah 				;line feed 
		int 21h					;end of carriage return
	;
	
	; start printing id
		mov ax,@data
		mov ds,ax
		mov ah,09h
		mov dx,offset id
		int 21h
	; end of printing id
	
	;go to a new line
		mov ah,02h				;new line
		mov dl,0dh 				;carriage return
		int 21h					;execute carriage return
		mov dl,0ah 				;line feed 
		int 21h					;end of carriage return
	;
	
	; start of printing uni
		mov ax,@data			
		mov ds,ax
		mov ah,09h
		mov dx,offset uni
		int 21h
	; end of printing uni
	
	;return to Dos
		mov ah,4ch				;Dos Exit function
		int 21h					;exit
main endp
end main