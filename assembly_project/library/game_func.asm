INCLUDE mylib.inc

.data


.code

;-----------------------------------------------------------
UPDATE_PLAYER PROC
;
;讓腳色移動的function
;Receives: eax,edx,esi
;Returns: edx
;Last update: 5/15/24
;-----------------------------------------------------------

	;先消失，如果往左(a)，則右邊用空白覆蓋；向右則反之
	push eax
	push edx

	cmp al, 'a'
	je left_move
	cmp al, 'j'
	je left_move

	sub dl, 4
	left_move:
		add dl, 4
	call Gotoxy
	mov al, " "
	call WriteChar

	;後出現，如果是向左，則左邊出現*
	cmp esi,0
	je decrease_xPos

	increase_xPos:
		pop edx
		inc dl
		jmp draw_player

	decrease_xPos:
		pop edx
		dec dl

	draw_player:
		push edx   ; 為了出現*，因此位置只是暫存，之後要給變數pos
		cmp esi, 0; 向左不變，直接執行Gotoxy
		je  show_star

		add dl, 4

		show_star:
			call Gotoxy
			mov al, "*"
			call WriteChar

		pop edx

	pop eax
	ret
UPDATE_PLAYER ENDP


END