;Object: Write a program to print your name 100 times using linefeed and carriage return
.model small
.stack 100h
.data
	_name db "Shery$"
.code

print_name macro
	mov ax,@data			;initialized data segment
	mov ds,ax
	mov ah,09h				;display string
	mov dx,offset _name		;offset specify string address
	int 21h					;interrupt
endm

new_line macro			;macro invoked for line feed & carriage return
	mov ah,02h			;Display a char
	mov dl,0ah			;predefine carriage return
	int 21h
	mov dl,0dh 			;predefine line feed
	int 21h
endm
main proc
			
	mov ah,02h
	mov cx,100
	_con:
		print_name
		new_line
	loop _con
	
	mov ah,4ch
	int 21h
main endp
end main