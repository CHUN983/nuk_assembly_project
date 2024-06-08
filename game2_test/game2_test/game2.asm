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
PLAYER 	BYTE "*****",0,0ah,0dh
PLAYER_HEAD BYTE "*",0,0ah,0dh

xPos_player1 BYTE ?
yPos_player1 BYTE ?


xPos_player2 BYTE ?
yPos_player2 BYTE ?



;bullet
BULLET BYTE '@',0ah,0dh

.code

main PROC

call GROUND
call PLAYER_POS

game_loop:
	


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
	mov dh, 32
	mov dl, 48
	mov xPos_player1, dl
	mov yPos_player1, dh
	draw_player1:
		mov dl, xPos_player1
		mov dh, yPos_player1
		sub dh, cl
		call Gotoxy
		mov edx, OFFSET player
		call WriteString
	loop draw_player1
	mov dl, 50
	mov dh, 29
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

	mov dl, 50
	mov dh, 8
	call Gotoxy
	mov edx, OFFSET PLAYER_HEAD
	call WriteString

	ret
PLAYER_POS ENDP

END main