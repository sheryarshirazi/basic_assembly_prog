;object: 'Display character on the screen'

.model small		;specify the model used: 'memory space for code and data'
.stack 100h			;allocate the 100h memory allocate for stack:'tells assembler that stack segment starts here'
.code				;start code segment
main proc			;start procedure
	mov ah,02h		;display char function: 'calling service routine by service number'
	mov dl,'S'		;char is S: 'dl' is use for display, so printing 'S'
	int 21h			;interrupt: calling interrupt of of service routine '21h'
	mov ah,4ch		;return to DOS: exit to DOS or return to DOS
	int 21h			;interrupt: '21h' is a service routine, provides ... like 4ch
main endp			;end procedure: end of main procedure body
end main			;end of main

; <service library>
;	21h:
;		routine:
;		i.	4ch : exit dos or return to dos
;		ii.	02h : for display
;
;
;
; <registers>
;	dl : for display
;	ah : calling any service