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

;�H���A�M�w���ӥi�H��
semaphore BYTE 0
;�ɶ��W�O�A�C�g�L20�����H���B�z�ݭn�B�z�@��ball
tamp WORD 20

.code

main PROC

	call GROUND
	call PLAYER_POS

	gameloop:

		;�����O�̰��u����	
		mov ah, 0 ;ah�M0��getkeystate�P�_�O�_��J
		INVOKE GetKeyState, VK_X
		.IF ah
			jmp exitGame
		.ENDIF

		mov eax,3
		call delay

		;�̶��ǨM�wplayer1��player2�A������context switch������
		not semaphore
		
		;get user input
		.IF semaphore==0
			dec tamp

			;for player1
			mov ah, 0
			INVOKE GetKeyState, VK_W
			.IF ah
				mov inputChar,"w"
				mov al, "w"
				jmp moveUp

			.ENDIF

			INVOKE GetKeyState, VK_S
			.IF ah
				mov inputChar,"s"
				mov al, "s"
				jmp moveDown

			.ENDIF

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

			INVOKE GetKeyState, VK_UP
			.IF ah
				mov inputChar, "i"
				mov al, "i"
				jmp moveUp
			.ENDIF

			INVOKE GetKeyState, VK_DOWN
			.IF ah
				mov inputChar, "k"
				mov al, "k"
				jmp moveDown
			.ENDIF

			INVOKE GetKeyState, VK_LEFT
			.IF ah
				mov inputChar, "j"
				mov al, "j"
				jmp moveLeft
			.ENDIF

			INVOKE GetKeyState, VK_RIGHT
			.IF ah
				mov inputChar, "l"
				mov al, "l"
				jmp moveRight
			.ENDIF

		.ENDIF

	jmp gameloop ;�����è�ë���L���s

	moveUp:
		.IF inputChar=='w'
			cmp yPos_player1, 5
			jle gameloop

			mov dl, xPos_player1
			mov dh, yPos_player1

			
		.ENDIF
	moveDown:
	moveLeft:

		;�T�{�Oplayer1�٬Oplayer2
		.IF inputChar == 'a'
			cmp xPos_player1, 33
			jle gameloop
				
			mov dl, xPos_player1
			mov dh, yPos_player1
			.IF xPos_player1_head < dl
				mov dl, xPos_player1
				mov dh, yPos_player1
				mov esi,0			;0�N��V���AxPos�ݭn��1
				;����Ĥ@�h
				push 1
				call UPDATE_PLAYER
				add esp, 4
				push edx

					
				;����ĤG�h
				mov dl, xPos_player1_head
				mov dh, yPos_player1_head
				push 2
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
				mov xPos_player1_head, dl
				mov yPos_player1_head, dh

				;����ĤT�h
				mov dl, xPos_player1
				mov dh, yPos_player1
				sub dh, 2

				push 1
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
					
				pop edx
				mov xPos_player1, dl
				mov yPos_player1, dh

				jmp gameLoop
			.ENDIF
				
			;------------------------------------------------------------
			;�S���N���Y���b�P��V�P�@��m

			;���M�����P��V���Y
			call CLEAR_HEAD

			;���Y���쥿�T����m
			mov dl, xPos_player1
			dec dl
			mov dh, yPos_player1
			dec dh
			mov xPos_player1_head, dl
			mov yPos_player1_head, dh
			call Gotoxy
			mov al, "*"
			call WriteChar

			;����player����
			;������
			mov dl, xPos_player1
			add dl, 2
			mov dh, yPos_player1

			call Gotoxy
			mov al, " "
			call writeChar
			dec dh
			call Gotoxy
			mov al, " "
			call writeChar

			;�A�X�{
			mov dl, xPos_player1
			mov dh, yPos_player1
			sub dh, 2
			mov ecx, 2
			L2:
				call Gotoxy
				mov al, "*"
				call writeChar
				inc dl
			loop L2	
			;------------------------------------------------------------

			jmp gameLoop
		.ENDIF

	moveRight:
		.IF inputChar == 'd'
			;���ݬݦ��S���W�L��ɡA�����ܪ�����
			cmp xPos_player1, SIZEOF GAME_GROUND+22
			jge gameLoop

			mov dl, xPos_player1
			mov dh, yPos_player1
			;���Y���V�P�V��
			inc dl
			.IF xPos_player1_head > dl
				mov dl, xPos_player1
				mov dh, yPos_player1
				mov esi, 1			  ;1�N��V�k�AxPos�ݭn�[1
				;����Ĥ@�h
				push 1
				call UPDATE_PLAYER
				add esp, 4
				push edx

					
				;����ĤG�h
				mov dl, xPos_player1_head
				mov dh, yPos_player1_head
				sub dl, 2
				push 2
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
				mov xPos_player1_head, dl
				add xPos_player1_head, 2
				mov yPos_player1_head, dh

				;����ĤT�h
				mov dl, xPos_player1
				mov dh, yPos_player1
				sub dh, 2

				push 1
				call Gotoxy
				call UPDATE_PLAYER	
				add esp, 4
					
				pop edx
				mov xPos_player1, dl
				mov yPos_player1, dh

				jmp gameLoop
			.ENDIF
			
			;------------------------------------------------------------
			;�S���N���Y���b�P��V�P�@��m

			;;�]���Y�V�k�A���Y�쥻�b���A���u�n���Y�N�n�A�ҥH�n���s�_�Ӱ��P�_
			.IF xPos_player1_head <dl
				mov esi,1
			.ENDIF
			;���M�����P��V���Y
			call CLEAR_HEAD

			;���Y���쥿�T����m
			mov dl, xPos_player1
			add dl, 3
			.IF esi == 1
				sub dl, 3
				add dl, 2
			.ENDIF 
			mov dh, yPos_player1
			dec dh
			mov xPos_player1_head, dl
			mov yPos_player1_head, dh
			call Gotoxy
			mov al, "*"
			call WriteChar

			.IF esi ==1
				jmp gameLoop
			.ENDIF

			;����player����
			;������
			mov dl, xPos_player1
			mov dh, yPos_player1

			call Gotoxy
			mov al, " "
			call writeChar
			dec dh
			call Gotoxy
			mov al, " "
			call writeChar
			
			inc xPos_player1

			;�A�X�{
			mov dl, xPos_player1
			mov dh, yPos_player1
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


			jmp gameLoop
		.ENDIF


	exitGame:
		Invoke ExitProcess, 0
main ENDP

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
	mov dh, 5
	mov dl, 48
	mov xPos_player2, dl
	mov yPos_player2, dh
	draw_player2:
		mov dl, xPos_player2
		mov dh, yPos_player2
		add dh, cl
		call Gotoxy
		mov edx, OFFSET player
		call WriteString
	loop draw_player2

	mov dl, 49
	mov dh, 8
	mov xPos_player2_head, dl
	mov yPos_player2_head, dh
	call Gotoxy
	mov edx, OFFSET PLAYER_HEAD
	call WriteString

	ret
PLAYER_POS ENDP

CLEAR_HEAD PROC

	mov dl, xPos_player1_head
	mov dh, yPos_player1_head
	call Gotoxy
	mov al, " "
	call WriteChar

	ret
CLEAR_HEAD ENDP

END main