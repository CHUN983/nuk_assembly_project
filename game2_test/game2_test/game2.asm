INCLUDE game_func.inc

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
VK_M		EQU		00000004Dh
VK_ENTER	EQU		00000000Dh
VK_SPACEBAR	EQU		000000020h

.data

GAME_GROUND BYTE   '=================================================',0,0ah,0dh
GAME_SIDE_GROUND BYTE'||',0,0ah,0dh

;player
xPos_player BYTE ?
yPos_player BYTE ?
xPos_player_head BYTE ?
yPos_player_head BYTE ?

PLAYER 	BYTE "***",0,0ah,0dh
PLAYER_HEAD BYTE "*",0,0ah,0dh

xPos_player1 BYTE ?
yPos_player1 BYTE ?
xPos_player1_head BYTE ?
yPos_player1_head BYTE ?


xPos_player2 BYTE ?
yPos_player2 BYTE ?
xPos_player2_head BYTE ?
yPos_player2_head BYTE ?


inputChar BYTE ?

;bullet
BULLET BYTE '@',0ah,0dh
player1_time BYTE 0
player2_time BYTE 0
player_time BYTE 0
xPos_bullet BYTE 20 DUP(?)
yPos_bullet BYTE 20 DUP(?)

;信號，決定哪個可以動
semaphore BYTE 0
;時間戳記，每經過20次的信號處理需要處理一此ball
tamp WORD 20

.code

main PROC

	call GROUND
	call PLAYER_POS

	gameloop:

		;取消是最高優先序	
		mov ah, 0 ;ah清0給getkeystate判斷是否輸入
		INVOKE GetKeyState, VK_X
		.IF ah
			jmp exitGame
		.ENDIF

		mov eax,3
		call delay

		;依順序決定player1或player2，類似做context switch的概念
		not semaphore

		;將player1與player2的總子彈發射數加起來
		mov al, player1_time
		add al, player2_time
		mov player_time, al
		
		;get user input
		.IF semaphore==0
			dec tamp

			;for player1
			;change player1 pos
			mov al, xPos_player1
			mov ah, yPos_player1
			mov xPos_player, al
			mov yPos_player, ah
			;change player1_head pos
			mov al, xPos_player1_head
			mov ah, yPos_player1_head
			mov xPos_player_head, al
			mov yPos_player_head, ah


			INVOKE GetKeyState, VK_W
			.IF ah
				mov inputChar,"w"
				mov al, "w"
				call moveUp
				jmp update1
			.ENDIF

			INVOKE GetKeyState, VK_S
			.IF ah
				mov inputChar,"s"
				mov al, "s"
				call moveDown
				jmp update1
			.ENDIF

			INVOKE GetKeyState, VK_A
			.IF ah
				mov inputChar,"a"
				mov al, "a"
				call moveLeft
				jmp update1
			.ENDIF

			INVOKE GetKeyState, VK_D
			.IF ah
				mov inputChar,"d"
				mov al, "d"
				call moveRight
				jmp update1
			.ENDIF

			update1:
			;update player pos
			mov al, xPos_player
			mov ah, yPos_player
			mov xPos_player1, al
			mov yPos_player1, ah
			mov al, xPos_player_head
			mov ah, yPos_player_head
			mov xPos_player1_head, al
			mov yPos_player1_head, ah

			mov ah, 0
			INVOKE GetKeyState, VK_SPACE
			.IF ah && player1_time < 10 

				inc player1_time

				.IF inputChar == 'w'
					push 0
				.ENDIF
				.IF inputChar == 'a'
					push 1
				.ENDIF
				.IF inputChar == 's'
					push 2
				.ENDIF
				.IF inputChar == 'd'
					push 3
				.ENDIF


			.ENDIF
			call ATTACK

			jmp gameLoop

		.ENDIF

		.IF semaphore == 0FFh
			dec tamp

		;for player2
			;change player2 pos
			mov al, xPos_player2
			mov ah, yPos_player2
			mov xPos_player, al
			mov yPos_player, ah
			;change player1_head pos
			mov al, xPos_player2_head
			mov ah, yPos_player2_head
			mov xPos_player_head, al
			mov yPos_player_head, ah
			mov ah, 0

			INVOKE GetKeyState, VK_UP
			.IF ah
				mov inputChar, "w"
				mov al, "w"
				call moveUp
				jmp update2
			.ENDIF

			INVOKE GetKeyState, VK_DOWN
			.IF ah
				mov inputChar, "s"
				mov al, "s"
				call moveDown
				jmp update2
			.ENDIF

			INVOKE GetKeyState, VK_LEFT
			.IF ah
				mov inputChar, "a"
				mov al, "a"
				call moveLeft
				jmp update2
			.ENDIF

			INVOKE GetKeyState, VK_RIGHT
			.IF ah
				mov inputChar, "d"
				mov al, "d"
				call moveRight
				jmp update2
			.ENDIF

			update2:
			;update player pos
			mov al, xPos_player
			mov ah, yPos_player
			mov xPos_player2, al
			mov yPos_player2, ah
			mov al, xPos_player_head
			mov ah, yPos_player_head
			mov xPos_player2_head, al
			mov yPos_player2_head, ah

		.ENDIF

	jmp gameloop ;防止白癡亂按其他按鈕

	exitGame:
		Invoke ExitProcess, 0
main ENDP

MOVEUP PROC
		.IF inputChar=='w'
			cmp yPos_player, 8
			jle stop

			mov dl, xPos_player
			mov dh, yPos_player
			;判斷投是否朝上(同一方向)
			dec dh
			.IF yPos_player_head < dh
				mov dl, xPos_player
				mov dh, yPos_player
				;控制第一列
				push 2
				call UPDATE_PLAYER
				add esp,4
				push edx			;先把下一步的位置存起來

				;控制第二列
				mov dl, xPos_player_head
				mov dh, yPos_player_head
				add dh, 2
				push 3
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
				mov xPos_player_head, dl
				mov yPos_player_head, dh
				sub yPos_player_head, 2

				;控制第三列
				mov dl, xPos_player
				mov dh, yPos_player
				add dl, 2

				push 2
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
					
				pop edx
				mov xPos_player, dl
				mov yPos_player, dh

				jmp stop

			.ENDIF

			;------------------------------------------------------------
			;沒有代表頭不在與方向同一位置

			;因為頭向上，但頭原本在下，那只要動頭就好，所以要先存起來做判斷
			mov esi, 0
			.IF yPos_player_head > dh
				mov esi,1
			.ENDIF
			;先清掉不同方向的頭
			call CLEAR_HEAD

			;把頭移到正確的位置
			mov dl, xPos_player
			mov dh, yPos_player
			.IF esi == 1 
				inc dl
				sub dh, 2
			.ENDIF
			.IF esi == 0
				inc dl
				sub dh, 3
			.ENDIF
			mov xPos_player_head, dl
			mov yPos_player_head, dh
			call Gotoxy
			mov al, "*"
			call WriteChar

			.IF esi==1
				jmp stop
			.ENDIF

			;移動player本身
			;先消失
			mov dl, xPos_player
			mov dh, yPos_player

			call Gotoxy
			mov al, " "
			call writeChar
			inc dl
			call Gotoxy
			mov al, " "
			call writeChar
			
			dec yPos_player

			;再出現
			mov dl, xPos_player
			mov dh, yPos_player
			add dl, 2
			mov ecx, 2
			.WHILE ecx >0
				call Gotoxy
				mov al, "*"
				call writeChar
				dec dh
				dec ecx
			.ENDW
			;------------------------------------------------------------
		.ENDIF

		stop:

		ret

MOVEUP ENDP

MOVEDOWN PROC
		.IF inputChar=='s'
			cmp yPos_player, 30
			jge stop

			mov dl, xPos_player
			mov dh, yPos_player
			;判斷投是否朝上(同一方向)

			.IF yPos_player_head > dh
				mov dl, xPos_player
				mov dh, yPos_player
				;控制第一列
				push 2
				call UPDATE_PLAYER
				add esp,4
				push edx			;先把下一步的位置存起來

				;控制第二列
				mov dl, xPos_player_head
				mov dh, yPos_player_head
				sub dh, 1
				push 3
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
				mov xPos_player_head, dl
				mov yPos_player_head, dh
				add yPos_player_head, 1

				;控制第三列
				mov dl, xPos_player
				mov dh, yPos_player
				add dl, 2

				push 2
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4

				pop edx
				mov xPos_player, dl
				mov yPos_player, dh

				jmp stop
			.ENDIF

			;------------------------------------------------------------
			;沒有代表頭不在與方向同一位置

			;因為頭向下，但頭原本在上，那只要動頭就好，所以要先存起來做判斷
			mov esi, 0

			inc yPos_player_head
			.IF yPos_player_head < dh
				mov esi,1
			.ENDIF
			dec yPos_player_head
			;先清掉不同方向的頭
			call CLEAR_HEAD

			;把頭移到正確的位置
			mov dl, xPos_player
			mov dh, yPos_player
			inc dl
			inc dh

			mov xPos_player_head, dl
			mov yPos_player_head, dh
			call Gotoxy
			mov al, "*"
			call WriteChar

			.IF esi==1
				jmp stop
			.ENDIF

			;移動player本身
			;先消失
			mov dl, xPos_player
			mov dh, yPos_player

			sub dh, 2
			call Gotoxy
			mov al, " "
			call writeChar
			inc dl
			call Gotoxy
			mov al, " "
			call writeChar
			
			
			;再出現
			mov dl, xPos_player
			mov dh, yPos_player
			add dl, 2
			mov ecx, 2
			.WHILE ecx >0
				call Gotoxy
				mov al, "*"
				call writeChar
				dec dh
				dec ecx
			.ENDW

			;------------------------------------------------------------

			jmp stop

		.ENDIF

		stop:
		ret
MOVEDOWN ENDP

MOVELEFT PROC

		;確認是player1還是player2
		.IF inputChar == 'a'
			cmp xPos_player, 33
			jle stop
				
			mov dl, xPos_player
			mov dh, yPos_player
			.IF xPos_player_head < dl
				mov dl, xPos_player
				mov dh, yPos_player
				mov esi,0			;0代表向左，xPos需要減1
				;控制第一層
				push 1
				call UPDATE_PLAYER
				add esp, 4
				push edx

					
				;控制第二層
				mov dl, xPos_player_head
				mov dh, yPos_player_head
				push 2
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
				mov xPos_player_head, dl
				mov yPos_player_head, dh

				;控制第三層
				mov dl, xPos_player
				mov dh, yPos_player
				sub dh, 2

				push 1
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
					
				pop edx
				mov xPos_player, dl
				mov yPos_player, dh

				jmp stop
			.ENDIF
				
			;------------------------------------------------------------
			;沒有代表頭不在與方向同一位置

			;先清掉不同方向的頭
			call CLEAR_HEAD

			;把頭移到正確的位置
			mov dl, xPos_player
			dec dl
			mov dh, yPos_player
			dec dh
			mov xPos_player_head, dl
			mov yPos_player_head, dh
			call Gotoxy
			mov al, "*"
			call WriteChar

			;移動player本身
			;先消失
			mov dl, xPos_player
			add dl, 2
			mov dh, yPos_player

			call Gotoxy
			mov al, " "
			call writeChar
			dec dh
			call Gotoxy
			mov al, " "
			call writeChar

			;再出現
			mov dl, xPos_player
			mov dh, yPos_player
			sub dh, 2
			mov ecx, 2
			L2:
				call Gotoxy
				mov al, "*"
				call writeChar
				inc dl
			loop L2	
			;------------------------------------------------------------

			jmp stop
		.ENDIF
	stop:
		ret
MOVELEFT ENDP

MOVERIGHT PROC
		.IF inputChar == 'd'
			;先看看有沒有超過邊界，有的話直接跳
			cmp xPos_player, SIZEOF GAME_GROUND+22
			jge stop

			mov dl, xPos_player
			mov dh, yPos_player
			;當頭跟方向同向時
			inc dl
			.IF xPos_player_head > dl
				mov dl, xPos_player
				mov dh, yPos_player
				mov esi, 1			  ;1代表向右，xPos需要加1
				;控制第一層
				push 1
				call UPDATE_PLAYER
				add esp, 4
				push edx

					
				;控制第二層
				mov dl, xPos_player_head
				mov dh, yPos_player_head
				sub dl, 2
				push 2
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
				mov xPos_player_head, dl
				add xPos_player_head, 2
				mov yPos_player_head, dh

				;控制第三層
				mov dl, xPos_player
				mov dh, yPos_player
				sub dh, 2

				push 1
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
					
				pop edx
				mov xPos_player, dl
				mov yPos_player, dh

				jmp stop
			.ENDIF
			
			;------------------------------------------------------------
			;沒有代表頭不在與方向同一位置

			;因為頭向右，但頭原本在左，那只要動頭就好，所以要先存起來做判斷
			.IF xPos_player_head <dl
				mov esi,1
			.ENDIF
			;先清掉不同方向的頭
			call CLEAR_HEAD

			;把頭移到正確的位置
			mov dl, xPos_player
			add dl, 3
			.IF esi == 1		;長寬不一樣
				sub dl, 3
				add dl, 2
			.ENDIF 
			mov dh, yPos_player
			dec dh
			mov xPos_player_head, dl
			mov yPos_player_head, dh
			call Gotoxy
			mov al, "*"
			call WriteChar

			.IF esi ==1
				jmp stop
			.ENDIF

			;移動player本身
			;先消失
			mov dl, xPos_player
			mov dh, yPos_player

			call Gotoxy
			mov al, " "
			call writeChar
			dec dh
			call Gotoxy
			mov al, " "
			call writeChar
			
			inc xPos_player

			;再出現
			mov dl, xPos_player
			mov dh, yPos_player
			sub dh, 2
			mov ecx, 2
			.WHILE ecx >0
				call Gotoxy
				mov al, "*"
				call writeChar
				inc dl
				dec ecx
			.ENDW
			;------------------------------------------------------------


			jmp stop
		.ENDIF

	stop:
		ret
MOVERIGHT ENDP




GROUND PROC

	;draw ground button and top (height:0~24, width: 1~?)
	mov dl, 30
	mov dh, 5
	call Gotoxy
	mov edx, OFFSET GAME_GROUND
	CALL WriteString
	MOV dl, 30
	mov dh, 32
	call GOtoxy
	mov edx,OFFSET GAME_GROUND
	call WriteString

	;draw side
	mov ecx, 28
	mov bl, 5
	side1:
		mov dh, bl
		mov dl, 30
		call Gotoxy
		inc bl
		
		mov edx, OFFSET GAME_SIDE_GROUND
		call WriteString
		call Crlf
		loop side1

	mov ecx, 28
	mov bl,5
	side2:
		mov dh, bl
		mov dl, SIZEOF GAME_SIDE_GROUND+72
		call Gotoxy
		inc bl

		mov edx,OFFSET GAME_SIDE_GROUND
		call WriteString
		call Crlf
		loop side2

	ret
GROUND ENDP

PLAYER_POS PROC
	;player1
	mov ecx, 2
	mov dh, 31
	mov dl, 48
	mov xPos_player1, dl
	mov yPos_player1, dh
	draw_player1:
		call Gotoxy
		mov edx, OFFSET player
		call WriteString
		mov dl, xPos_player1
		mov dh, yPos_player1
		sub dh, cl
		add dh, 1
	loop draw_player1
	mov dl, 49
	mov dh, 29
	mov xPos_player1_head, dl
	mov yPos_player1_head, dh
	call Gotoxy
	mov edx, OFFSET PLAYER_HEAD
	call WriteString

	;player2

	mov ecx, 2
	mov dh, 8
	mov dl, 48
	mov xPos_player2, dl
	mov yPos_player2, dh
	call Gotoxy
	mov edx, OFFSET player
	call WriteString

	mov dl, xPos_player2
	mov dh, yPos_player2
	dec dh
	call Gotoxy
	mov edx, OFFSET player
	call WriteString

	

	mov dl, 49
	mov dh, 9
	mov xPos_player2_head, dl
	mov yPos_player2_head, dh
	call Gotoxy
	mov edx, OFFSET PLAYER_HEAD
	call WriteString

	ret
PLAYER_POS ENDP

CLEAR_HEAD PROC

	mov dl, xPos_player_head
	mov dh, yPos_player_head
	call Gotoxy
	mov al, " "
	call WriteChar

	ret
CLEAR_HEAD ENDP

ATTACK PROC
	push ebp
	mov ebp, esp
	mov ecx, 0
	mov cl, player_time
	.IF cl ==0 
		jmp stop
	.ENDIF

	mov eax, 0
	
	.WHILE ecx > 0
		mov esi, [ebp+4*ecx+4]
		mov dl, [xPos_bullet+eax]
		mov dh, [yPos_bullet+eax]
		call Gotoxy
		mov edx, " "
		call WriteString

		mov dl, [xPos_bullet+eax]
		mov dh, [yPos_bullet+eax]
		.IF esi == 0
			dec dh
		.ENDIF
		.IF esi == 1
			dec dl
		.ENDIF
		.IF esi == 2
			inc dh
		.ENDIF
		.IF esi == 3
			inc dl
		.ENDIF
		mov [xPos_bullet+eax], dl
		mov [yPos_bullet+eax], dh
		call Gotoxy
		mov edx, "@"
		call WriteString


		inc eax
		dec ecx
	.ENDW
	
	stop:

		pop ebp
		ret
ATTACK ENDP

END main