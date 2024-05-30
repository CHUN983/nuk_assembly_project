include game_func.inc

GetKeyState PROTO, nVirtkey:DWORD ; Get keyboard inputs

VK_LEFT		EQU		000000025h
VK_UP		EQU		000000026h
VK_RIGHT	EQU		000000027h
VK_DOWN		EQU		000000028h
VK_W		EQU		000000057h
VK_A		EQU		000000041h
VK_S		EQU		000000053h
VK_D		EQU		000000044h
VK_X		EQU		000000058h
VK_ENTER	EQU		00000000Dh
VK_SPACEBAR	EQU		000000020h

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
	  BYTE   '               ||            *   uuuuuu uu uuuuuu     *            ||',0ah,0dh
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

	GAME_RULE BYTE 'Rule：',0ah,0dh
			  BYTE "The player1 is on the buttom, keyword a and d represent left and right respectively.",0ah, 0dh
			  BYTE "The player2 is on the top, keyword j and l represent left and right respectively.",0,0ah, 0dh
	GAME_GROUND BYTE '=====================                              =========================',0,0ah, 0dh
	GAME_SIDE_GROUND BYTE'||',0,0ah,0dh

	GAME_MID_GROUND BYTE  '---------------------------------------------------------------------------',0,0ah, 0dh

	inputChar BYTE ?

	;ball pos
	xPos_ball BYTE 35
	yPos_ball BYTE 17

	player BYTE "*****",0
	;player1 pos
	xPos_player1 BYTE 35
	yPos_player1 BYTE 28
	;player2 pos
	xPos_player2 BYTE 35
	yPos_player2 BYTE 6

	;信號，決定哪個可以動
	semaphore BYTE 0001b

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

		;取消是最高優先序	
		mov ah, 0 ;ah清0給getkeystate判斷是否輸入
		INVOKE GetKeyState, VK_X
		.IF ah
			jmp exitGame
		.ENDIF

		;依順序決定player1或player2，類似做context switch的概念
		XOR semaphore, 0001b
		
		;get user input
		.IF semaphore==0

			;for player1
			mov ah, 0
			INVOKE GetKeyState, VK_A
			.IF ah
				mov inputChar,"a"
				mov eax,60
				call delay
				mov al, "a"
				jmp moveLeft

			.ENDIF

			INVOKE GetKeyState, VK_D
			.IF ah
				mov inputChar,"d"
				mov eax,60
				call delay
				mov al, "d"
				je moveRight
			.ENDIF

		.ENDIF

		.IF semaphore==1

		;for player2
			mov ah, 0

			INVOKE GetKeyState, VK_LEFT
			.IF ah
				mov inputChar, "j"
				mov eax,60
				call delay
				mov al, "j"
				je moveLeft
			.ENDIF

			INVOKE GetKeyState, VK_RIGHT
			.IF ah
				mov inputChar, "l"
				mov eax,60
				call delay
				mov al, "l"
				je moveright
			.ENDIF

		.ENDIF

		jmp gameloop ;防止白癡亂按其他按鈕

		moveLeft:

			;確認是player1還是player2
			cmp inputChar, 'j'
			je player2_time_left

			player1_time_left:
				;先看看有沒有超過邊界，有的話直接跳
				cmp xPos_player1, 2
				jle stop

				mov dl, xPos_player1
				mov dh, yPos_player1
				mov esi,0			;0代表向左，xPos需要減1
				call UPDATE_PLAYER
				mov xPos_player1, dl
				mov yPos_player1, dh
				jmp gameLoop


			player2_time_left:
				;先看看有沒有超過邊界，有的話直接跳
				cmp xPos_player2, 2
				jle stop

				mov dl, xPos_player2
				mov dh, yPos_player2
				mov esi,0			;0代表向左，xPos需要減1
				call UPDATE_PLAYER
				mov xPos_player2, dl
				mov yPos_player2, dh

			jmp gameLoop

		moveRight:


			;確認是player1還是player2
			cmp inputChar, 'l'
			je player2_time_right
			
			;執行各自player的位置(往右一格)
			player1_time_right:
				;先看看有沒有超過邊界，有的話直接跳
				cmp xPos_player1, SIZEOF GAME_GROUND-7
				jge stop

				mov dl, xPos_player1
				mov dh, yPos_player1
				mov esi, 1			  ;1代表向右，xPos需要加1
				call UPDATE_PLAYER
				mov xPos_player1, dl
				mov yPos_player1, dh
				jmp gameloop

			player2_time_right:
				;先看看有沒有超過邊界，有的話直接跳
				cmp xPos_player2, SIZEOF GAME_GROUND-7
				jge stop

				mov dl, xPos_player2
				mov dh, yPos_player2
				mov esi, 1			  ;1代表向右，xPos需要加1
				call UPDATE_PLAYER
				mov xPos_player2, dl
				mov yPos_player2, dh
				

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
		mov dl, SIZEOF GAME_MID_GROUND
		call Gotoxy
		inc bl

		mov edx,OFFSET GAME_SIDE_GROUND
		call WriteString
		call Crlf
		loop side2

	player_pos:
		mov dh, yPos_player1
		mov dl, xPos_player1
		call Gotoxy
		mov edx, OFFSET player
		call WriteString

		mov dh, yPos_player2
		mov dl, xPos_player2
		call Gotoxy
		mov edx, OFFSET player
		call WriteString

		

	ret 
GROUND ENDP




END main	
