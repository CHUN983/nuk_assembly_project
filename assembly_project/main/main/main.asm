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
	GAME_GROUND BYTE '===================                    ===================',0,0ah, 0dh
	GAME_SIDE_GROUND BYTE'||',0,0ah,0dh

	GAME_MID_GROUND BYTE  '-----------------------------------------------------------',0,0ah, 0dh

	inputChar BYTE ?

	player BYTE "*****",0
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

	state DWORD 10
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
					jmp exitGame
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
	call WriteChar

	;往既定的方向移動,eax儲存state，並判斷是否hit
	mov esi, 0
	mov eax, state
	mov dl, xPos_ball
	mov dh, yPos_ball
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
	add esp, 4

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
		call BALL_STATE		;notion上面一段的
		call BALL_MOVE

	.ENDIF

	pop eax
	ret
UPDATE_BALL ENDP

BALL_STATE PROC

	;判斷板子往右還是往左還是沒動
	mov eax, path 
	cmp eax, 0
	je PATH_0
	cmp eax, 1
	je PATH_1
	cmp eax, 2
	je PATH_2
	cmp eax, 3
	je PATH_3
	jmp CONTINUE

	PATH_0:    ; 如果是?向靜止
		mov eax, state
		cmp eax, 1
		je STATE_1_0
		cmp eax, 2
		je STATE_2_0
		cmp eax, 3
		je STATE_3_0
		cmp eax, 4
		je STATE_4_0
		cmp eax, 5
		je STATE_5_0
		cmp eax, 6
		je STATE_6_0
		cmp eax, 7
		je STATE_7_0
		cmp eax, 8
		je STATE_8_0
		cmp eax, 9
		je STATE_9_0
		cmp eax, 10
		je STATE_10_0
		cmp eax, 11
		je STATE_11_0
		cmp eax, 12
		je STATE_12_0
		cmp eax, 13
		je STATE_13_0
		cmp eax, 14
		je STATE_14_0
		jmp CONTINUE

	STATE_1_0:
		mov eax, 8
		jmp CONTINUE
	STATE_2_0:
		mov eax, 9
		jmp CONTINUE
	STATE_3_0:
		mov eax, 10
		jmp CONTINUE
	STATE_4_0:
		mov eax, 11
		jmp CONTINUE
	STATE_5_0:
		mov eax, 12
		jmp CONTINUE
	STATE_6_0:
		mov eax, 13
		jmp CONTINUE
	STATE_7_0:
		mov eax, 14
		jmp CONTINUE
	STATE_8_0:
		mov eax, 1
		jmp CONTINUE
	STATE_9_0:
		mov eax, 2
		jmp CONTINUE
	STATE_10_0:
		mov eax, 3
		jmp CONTINUE
	STATE_11_0:
		mov eax, 4
		jmp CONTINUE
	STATE_12_0:
		mov eax, 5
		jmp CONTINUE
	STATE_13_0:
		mov eax, 6
		jmp CONTINUE
	STATE_14_0:
		mov eax, 7
		jmp CONTINUE

	PATH_1:    ; 如果是直向靜止
		mov eax, state
		cmp eax, 1
		je STATE_1_1
		cmp eax, 2
		je STATE_2_1
		cmp eax, 3
		je STATE_3_1
		cmp eax, 4
		je STATE_4_1
		cmp eax, 5
		je STATE_5_1
		cmp eax, 6
		je STATE_6_1
		cmp eax, 7
		je STATE_7_1
		cmp eax, 8
		je STATE_8_1
		cmp eax, 9
		je STATE_9_1
		cmp eax, 10
		je STATE_10_1
		cmp eax, 11
		je STATE_11_1
		cmp eax, 12
		je STATE_12_1
		cmp eax, 13
		je STATE_13_1
		cmp eax, 14
		je STATE_14_1
		jmp CONTINUE

	STATE_1_1:
		mov eax, 8
		jmp CONTINUE
	STATE_2_1:
		mov eax, 5
		jmp CONTINUE
	STATE_3_1:
		mov eax, 6
		jmp CONTINUE
	STATE_4_1:
		mov eax, 7
		jmp CONTINUE
	STATE_5_1:
		mov eax, 2
		jmp CONTINUE
	STATE_6_1:
		mov eax, 3
		jmp CONTINUE
	STATE_7_1:
		mov eax, 4
		jmp CONTINUE
	STATE_8_1:
		mov eax, 1
		jmp CONTINUE
	STATE_9_1:
		mov eax, 12
		jmp CONTINUE
	STATE_10_1:
		mov eax, 13
		jmp CONTINUE
	STATE_11_1:
		mov eax, 14
		jmp CONTINUE
	STATE_12_1:
		mov eax, 9
		jmp CONTINUE
	STATE_13_1:
		mov eax, 10
		jmp CONTINUE
	STATE_14_1:
		mov eax, 11
		jmp CONTINUE

	PATH_2:    ; 如果是?向右移
		mov eax, state
		cmp eax, 1
		je STATE_1_2
		cmp eax, 2
		je STATE_2_2
		cmp eax, 3
		je STATE_3_2
		cmp eax, 4
		je STATE_4_2
		cmp eax, 5
		je STATE_5_2
		cmp eax, 6
		je STATE_6_2
		cmp eax, 7
		je STATE_7_2
		cmp eax, 8
		je STATE_8_2
		cmp eax, 9
		je STATE_9_2
		cmp eax, 10
		je STATE_10_2
		cmp eax, 11
		je STATE_11_2
		cmp eax, 12
		je STATE_12_2
		cmp eax, 13
		je STATE_13_2
		cmp eax, 14
		je STATE_14_2
		jmp CONTINUE

	STATE_1_2:
		mov eax, 9
		jmp CONTINUE
	STATE_2_2:
		mov eax, 8
		jmp CONTINUE
	STATE_3_2:
		mov eax, 12
		jmp CONTINUE
	STATE_4_2:
		mov eax, 13
		jmp CONTINUE
	STATE_5_2:
		mov eax, 10
		jmp CONTINUE
	STATE_6_2:
		mov eax, 11
		jmp CONTINUE
	STATE_7_2:
		mov eax, 11
		jmp CONTINUE
	STATE_8_2:
		mov eax, 2
		jmp CONTINUE
	STATE_9_2:
		mov eax, 1
		jmp CONTINUE
	STATE_10_2:
		mov eax, 5
		jmp CONTINUE
	STATE_11_2:
		mov eax, 6
		jmp CONTINUE
	STATE_12_2:
		mov eax, 3
		jmp CONTINUE
	STATE_13_2:
		mov eax, 4
		jmp CONTINUE
	STATE_14_2:
		mov eax, 4
		jmp CONTINUE

	PATH_3:    ;如果是?向左移
		mov eax, state
		cmp eax, 1
		je STATE_1_3
		cmp eax, 2
		je STATE_2_3
		cmp eax, 3
		je STATE_3_3
		cmp eax, 4
		je STATE_4_3
		cmp eax, 5
		je STATE_5_3
		cmp eax, 6
		je STATE_6_3
		cmp eax, 7
		je STATE_7_3
		cmp eax, 8
		je STATE_8_3
		cmp eax, 9
		je STATE_9_3
		cmp eax, 10
		je STATE_10_3
		cmp eax, 11
		je STATE_11_3
		cmp eax, 12
		je STATE_12_3
		cmp eax, 13
		je STATE_13_3
		cmp eax, 14
		je STATE_14_3
		jmp CONTINUE

	STATE_1_3:
		mov eax, 12
		jmp CONTINUE
	STATE_2_3:
		mov eax, 13
		jmp CONTINUE
	STATE_3_3:
		mov eax, 14
		jmp CONTINUE
	STATE_4_3:
		mov eax, 14
		jmp CONTINUE
	STATE_5_3:
		mov eax, 8
		jmp CONTINUE
	STATE_6_3:
		mov eax, 9
		jmp CONTINUE
	STATE_7_3:
		mov eax, 10
		jmp CONTINUE
	STATE_8_3:
		mov eax, 5
		jmp CONTINUE
	STATE_9_3:
		mov eax, 6
		jmp CONTINUE
	STATE_10_3:
		mov eax, 7
		jmp CONTINUE
	STATE_11_3:
		mov eax, 7
		jmp CONTINUE
	STATE_12_3:
		mov eax, 1
		jmp CONTINUE
	STATE_13_3:
		mov eax, 2
		jmp CONTINUE
	STATE_14_3:
		mov eax, 3
		jmp CONTINUE

	CONTINUE:
		mov state, eax


ret
BALL_STATE ENDP


END main	
