;Object: 'Write a program that prints a character 100 times.'

.model small					; Using model small
.stack 100h						; Allocate 100 memory location for stack
.code							; Start of code segment

main proc
	
	mov ah,02h					; Display character
	mov Cx,100					; no. of times loop 'll execute
	;counter should written outside the loop
	print:						; loop starts from here
		mov dl,'a'
		int 21h
	loop print					; Execute the For loop
	
	;return to Dos
		mov ah,4ch	;Dos Exit function
		int 21h		;exit
	;
main endp
end main