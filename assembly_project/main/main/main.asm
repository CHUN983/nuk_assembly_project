include game_func.inc

.data
	;START PHOTO DATA
		StartWidth EQU 301
		StartHeight EQU 200
		StartFilename BYTE 'start.bin', 0
		StartFilehandle DW ?
		StartData BYTE StartWidth*StartHeight dup(0)
    
	GAME_START_STR BYTE '  ',0ah,0dh
	  BYTE   '                ====================================================',0ah,0dh
	  BYTE   '               ||                                                  ||',0ah,0dh                                        
	  BYTE   '               ||            *    uuuuu uu uuuuu      *            ||',0ah,0dh
	  BYTE   '               ||                                                  ||',0ah,0dh
	  BYTE   '               ||--------------------------------------------------||',0ah,0dh
	  BYTE   '               ||                                                  ||',0ah,0dh
	  BYTE   '               ||   Please Enter the name of the first player      ||',0ah,0dh
	  BYTE   '               ||                then press Enter                  ||',0ah,0dh   
	  BYTE   '               ||   Please Enter the name of the second player     ||',0ah,0dh
	  BYTE   '               ||                                                  ||',0ah,0dh
	  BYTE   '               ||                                                  ||',0ah,0dh
	  BYTE   '               ||         Then press Enter to start play           ||',0ah,0dh 
	  BYTE   '               ||       **MAX 7 CHARCHTERS FOR EACH PLAYER**       ||',0ah,0dh
	  BYTE   '               ||                                                  ||',0ah,0dh
	  BYTE   '                ====================================================',0ah,0dh
	  BYTE   '$ press c to be continue',0,0ah,0dh 

	GAME_RULE BYTE 'Rule¡G',0ah,0dh
			  BYTE "The player1 is on the buttom, keyword a and d represent left and right respectively.",0ah, 0dh
			  BYTE "The player2 is on the top, keyword j and l represent left and right respectively.",0,0ah, 0dh
	GAME_GROUND BYTE '==================================                              ========================================',0,0ah, 0dh
	GAME_SIDE_GROUND BYTE'||',0,0ah,0dh

	GAME_MID_GROUND BYTE  '--------------------------------------------------------------------------------------------------------',0,0ah, 0dh

	inputChar BYTE ?

	;ball pos
	xPos_ball BYTE 50
	yPos_ball BYTE 17

	player1 BYTE "*****",0
	;player1 pos
	xPos_player1 BYTE 48
	yPos_player1 BYTE 28
	

.code
main PROC

	;Draw ground
	mov edx, OFFSET GAME_START_STR 
	call WriteString
	homeLoop:
		call ReadChar
		mov inputChar, al
		cmp inputChar, "c"
		je game
		
	jmp homeLoop

	game:
		call Clrscr
		call GROUND
		call BALL

	gameLoop:

	
		;get user input
		call ReadChar
		mov inputChar, al

		cmp inputChar,"x"
		je exitGame

		cmp inputChar,"a"
		je moveLeft
			
		cmp inputChar,"d"
		je moveRight

		jmp gameloop ;¨¾¤î¥ÕÃ¨¶Ã«ö¨ä¥L«ö¶s

		moveLeft:
			cmp xPos_player1, 2
			je stop

			mov dl, xPos_player1
			mov dh, yPos_player1
			call UPDATE_PLAYER
			dec xPos_player1
			call DRAW_PLAYER
			jmp gameLoop

		moveRight:
			cmp xPos_player1, 99
			je stop
			

			mov dl, xPos_player1
			mov dh, yPos_player1
			call UPDATE_PLAYER
			inc xPos_player1
			call DRAW_PLAYER
			jmp gameLoop

	stop:
		jmp gameLoop
	

	exitGame:
	Invoke ExitProcess, 0
main ENDP


BALL PROC
	mov dl, xPos_ball
	mov dh, yPos_ball
	call Gotoxy
	mov al ,"@"
	call WriteChar
	ret
BALL ENDP

PLAYER_GROUND PROC
	mov dl, xPos_player1
	mov dh, yPos_player1
	call Gotoxy
	mov al, player1
	call WriteChar

	ret
PLAYER_GROUND ENDP

DRAW_PLAYER PROC
	mov dl, xPos_player1
	mov dh, yPos_player1
	call Gotoxy
	mov edx, OFFSET player1
	call WriteString

	ret
DRAW_PLAYER ENDP

GROUND PROC
	;rule
	mov edx, OFFSET GAME_RULE
	call WriteString
	
	;draw ground button and top (height:0~24, width: 1~?)
	mov dl, 2
	mov dh, 5
	call Gotoxy
	mov edx, OFFSET GAME_GROUND
	CALL WriteString
	MOV dl, 2
	mov dh, 29
	call GOtoxy
	mov edx,OFFSET GAME_GROUND
	call WriteString

	;draw mid
	mov dl, 2
	mov	dh, 17
	call Gotoxy
	mov edx, OFFSET GAME_MID_GROUND
	call WriteString

	;draw side
	mov ecx, 25
	mov bl, 5
	side1:
		mov dh, bl
		mov dl, 0
		call Gotoxy
		inc bl
		
		mov edx, OFFSET GAME_SIDE_GROUND
		call WriteString
		call Crlf
		loop side1

	mov ecx, 25
	mov bl,5
	side2:
		mov dh, bl
		mov dl, 104
		call Gotoxy
		inc bl

		mov edx,OFFSET GAME_SIDE_GROUND
		call WriteString
		call Crlf
		loop side2

	player:
		mov dh, yPos_player1
		mov dl, xPos_player1
		call Gotoxy
		mov edx, OFFSET player1
		call WriteString

	ret 
GROUND ENDP




END main	
