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

	GAME_MENU BYTE 'Game Menu :',0ah,0dh
			  BYTE 'Press R to Read the game rule', 0ah, 0dh
			  BYTE 'Press D to increase the speed of the ball.', 0ah, 0dh
			  BYTE 'Press A to decrease the speed of the ball.', 0ah, 0dh
			  BYTE 'Press C to continue the game.', 0ah, 0dh
			  BYTE 'q. Exit',0ah,0dh
			  BYTE 'Enter your choice:',0ah,0dh,0

	GAME_RULE BYTE 'Rule：',0ah,0dh
			  BYTE 'Player 1 uses A and D keys to move left and right.', 0ah, 0dh
			  BYTE 'Player 2 uses left and right arrow keys to move left and right.', 0ah, 0dh
			  BYTE 'press R to return to the menu',0,0ah,0dh

	GAME_GROUND BYTE '===================                    ===================',0,0ah, 0dh
	GAME_SIDE_GROUND BYTE'||',0,0ah,0dh

	GAME_MID_GROUND BYTE  '-----------------------------------------------------------',0,0ah, 0dh

	inputChar BYTE ?

	player BYTE "*****",0
	;empty
	empty BYTE "     ",0


	;player1 pos
	xPos_player1 BYTE 48
	yPos_player1 BYTE 28
	;player2 pos
	xPos_player2 BYTE 48
	yPos_player2 BYTE 6

	;信號，決定哪個可以動
	semaphore BYTE 0
	;時間戳記，每經過20次的信號處理需要處理一此ball
	tamp WORD 20


	;球所需要的data----------------------------------------------------------------------------

	;ball pos
	xPos_ball BYTE 50
	yPos_ball BYTE 17

	state DWORD 1
	hit_wall DWORD 0
	path DWORD 0    ;板子正在右移，左移，還是靜止 
									;橫向靜止=0 同時改變上下左右
									;直向靜止=1 只會改變左右
									;右移=2     改變上下左右的同時改變速度
									;左移=3     改變上下左右的同時改變速度
	;-------------------------------------------------------------------------------------------

	word_test Dword 0
.code
main PROC

	;Draw ground
	mov edx, OFFSET GAME_START_STR 
	call WriteString
	homeLoop:
		call ReadChar
		mov inputChar, al
		cmp inputChar, "c"
		je menu
		
	jmp homeLoop
	
	menu:
	call Clrscr
	call GameMenuUI
	call ReadChar
	mov inputChar, al
	cmp inputChar, "r"
	je gamerule
	cmp inputChar, "c"
	je game
	cmp inputChar, "q"
	je exitGame
	jmp menu
	
	gamerule:
	call Clrscr; no 
	call GameRuleUI
	call ReadChar
	mov inputChar, al
	cmp inputChar, "r"
	je menu
	jmp gamerule

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

		mov eax,3
		call delay


		.IF tamp==0
			mov tamp, 5
			mov dl, xPos_ball
			mov dh, yPos_ball
			call UPDATE_BALL

			;當ball沒被接住時結束遊戲
			.IF yPos_ball<6 || yPos_ball > 28
				.IF xPos_ball > 42 && xPos_ball < 62
					jmp GAME_STOP
				.ENDIF
			.ENDIF
		.ENDIF

		;依順序決定player1或player2，類似做context switch的概念
		not semaphore
		
		;get user input
		.IF semaphore==0
			dec tamp

			;for player1
			mov ah, 0
			INVOKE GetKeyState, VK_A
			.IF ah
				mov inputChar,"a"
				mov al, "a"
				jmp moveLeft

			.ENDIF

			INVOKE GetKeyState, VK_D
			.IF ah
				mov inputChar,"d"
				mov al, "d"
				jmp moveRight
			.ENDIF

		.ENDIF

		.IF semaphore == 0FFh
			dec tamp

		;for player2
			mov ah, 0

			INVOKE GetKeyState, VK_LEFT
			.IF ah
				mov inputChar, "j"
				;mov eax,2
				;call delay
				mov al, "j"
				jmp moveLeft
			.ENDIF

			INVOKE GetKeyState, VK_RIGHT
			.IF ah
				mov inputChar, "l"
				;mov eax,2
				;call delay
				mov al, "l"
				jmp moveright
			.ENDIF

		.ENDIF



		jmp gameloop ;防止白癡亂按其他按鈕

		moveLeft:

			;確認是player1還是player2
			cmp inputChar, 'j'
			je player2_time_left

			player1_time_left:
				;先看看有沒有超過邊界，有的話直接跳
				cmp xPos_player1, 22
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
				cmp xPos_player2, 22
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
				cmp xPos_player1, SIZEOF GAME_GROUND+14
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
				cmp xPos_player2, SIZEOF GAME_GROUND+14
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

	GAME_STOP:
		mov ah, 0 ;ah�M0��getkeystate�P�_�O�_��J
		INVOKE GetKeyState, VK_SPACE
		.IF ah
			;���s�y����m�P���A
			mov dl, xPos_ball
			mov dh, yPos_ball
			call Gotoxy
			mov al, " "
			call WriteChar

			call Ball
			mov state, 1

			;���splayer����m
			mov dl, xPos_player1
			mov dh, yPos_player1
			call Gotoxy
			mov edx, OFFSET empty
			call WriteString

			mov xPos_player1, 48
			mov yPos_player1, 28
			mov dl, xPos_player1
			mov dh, yPos_player1
			call Gotoxy
			mov edx, OFFSET player
			call WriteString

			;for player2
			mov dl, xPos_player2
			mov dh, yPos_player2
			call Gotoxy
			mov edx, OFFSET empty
			call WriteString

			mov xPos_player2, 48
			mov yPos_player2, 6
			mov dl, xPos_player2
			mov dh, yPos_player2
			call Gotoxy
			mov edx, OFFSET player
			call WriteString


			jmp gameloop
		.ENDIF
		jmp GAME_STOP

	exitGame:
	Invoke ExitProcess, 0
main ENDP


BALL PROC
	mov dl, 50
	mov dh, 17
	call Gotoxy
	mov al ,"@"
	call WriteChar

	mov xPos_ball , dl
	mov yPos_ball ,dh
	ret
BALL ENDP

GameMenuUI PROC
	mov edx, OFFSET GAME_MENU
	call WriteString

	ret
GameMenuUI ENDP

GameRuleUI PROC
	mov edx, OFFSET GAME_RULE
	call WriteString
	ret
GameRuleUI ENDP

GROUND PROC
	;rule
	; mov edx, OFFSET GAME_RULE
	; call WriteString
	
	;draw ground button and top (height:0~24, width: 1~?)
	mov dl, 22
	mov dh, 5
	call Gotoxy
	mov edx, OFFSET GAME_GROUND
	CALL WriteString
	MOV dl, 22
	mov dh, 29
	call GOtoxy
	mov edx,OFFSET GAME_GROUND
	call WriteString

	;draw mid
	mov dl, 22
	mov	dh, 17
	call Gotoxy
	mov edx, OFFSET GAME_MID_GROUND
	call WriteString

	;draw side
	mov ecx, 25
	mov bl, 5
	side1:
		mov dh, bl
		mov dl, 20
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
		mov dl, SIZEOF GAME_SIDE_GROUND+75
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


UPDATE_BALL PROC
	
	push eax

	;假設dl已經在目前球的位置，先清除為" "或"-"
	call Gotoxy
	mov al," "
	.IF dh==17
		mov al, "-"
	.ENDIF
	.IF dh== 29 || dh == 5
		mov al, "="
	.ENDIF
	.IF dl == 80 || dl == 21
		mov al, "|"
	.ENDIF
	call WriteChar

	;往既定的方向移動,eax儲存state，並判斷是否hit
	mov esi, 0
	mov eax, state
	mov dl, xPos_ball
	mov dh, yPos_ball
	push DWORD PTR inputChar
	.IF state > 0 && state < 8
		push DWORD PTR xPos_player1
	.ENDIF
	.IF state < 15 && state > 7
		push DWORD PTR xPos_player2
	.ENDIF
	push path
	call BALL_MOVE

	pop path
	;xPos_player沒變，直接把esp一回去就好，不用再是player1還是player2
	add esp, 8

	mov hit_wall,esi
	mov xPos_ball, dl
	mov yPos_ball, dh


	;沒有hit的話照既定方向移動
	call Gotoxy
	mov ax, "@"
	call WriteChar

	;有hit的話先改變運動方向，然後移動
	.IF hit_wall==1
		;改state的值，目的修改球的移動方向，最後存回path
		push path
		push state
		call BALL_STATE		;notion上面一段的
		pop state
		pop path

		call BALL_MOVE

	.ENDIF

	pop eax
	ret
UPDATE_BALL ENDP



END main	
