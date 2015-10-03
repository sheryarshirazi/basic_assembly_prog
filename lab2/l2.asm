;Object: 'Display a single character and read the input from the keyboard.'

.model small
.stack 100h
.code 
main proc
	;display 'B'
		mov ah,02h	; display character function 
		mov dl,'B' 	; character is “B”
		int 21h 	; display it ;input a character
	
	;input a character
		mov ah,01h	;read character function
		int 21h 	;character in al
		mov bl,al	;save it in bl 
	
	;go to a new line 
		mov ah,02h	;display character function 'new line is display on screen that's why we use 02h'
		mov dl,0dh 	;carriage return
		int 21h 	;execute carriage return 
		mov dl,0ah	;line feed
		int 21h 	;execute line feed ;display character
	
	;display char
		mov dl,bl 	;return character
		int 21h		;display it
	
	;return to Dos
		mov ah,4ch	;Dos Exit function
		int 21h		;exit
main endp
end main