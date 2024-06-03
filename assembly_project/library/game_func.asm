INCLUDE Irvine32.inc

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


;------------------------------------------------------------------
;讓ball按照ebx上的state移動，移動完後看是否超出去，超過esi設定為1
;receives: eax, ebx, edx, esi, ebp
;return: edx, esi, [epb+12](for path)
;require: edx的值必須是ball的位置!
BALL_MOVE PROC
;---------------------------------------------------------------------
	push eax
	push ebp
	mov ebp, esp

    cmp eax, 1
    je EAX_1
    cmp eax, 2
    je EAX_2
    cmp eax, 3
    je EAX_3
    cmp eax, 4
    je EAX_4
    cmp eax, 5
    je EAX_5
    cmp eax, 6
    je EAX_6
    cmp eax, 7
    je EAX_7
    cmp eax, 8
    je EAX_8
    cmp eax, 9
    je EAX_9
    cmp eax, 10
    je EAX_10
    cmp eax, 11
    je EAX_11
    cmp eax, 12
    je EAX_12
    cmp eax, 13
    je EAX_13
    cmp eax, 14
    je EAX_14
    jmp STOP

	EAX_1:    ; 上上
		add dh, 2
		jmp STOP

	EAX_2:    ; 上上右
		add dh, 2
		add dl, 1
		jmp STOP

	EAX_3:    ; 上右
		add dh, 1
		add dl, 1
		jmp STOP

	EAX_4:    ; 上右右
		add dh, 1
		add dl, 2
		jmp STOP

	EAX_5:    ; 上上左
		add dh, 2
		sub dl, 1
		jmp STOP

	EAX_6:    ; 上左
		add dh, 1
		sub dl, 1
		jmp STOP

	EAX_7:    ; 上左左
		add dh, 1
		sub dl, 2
		jmp STOP

	EAX_8:    ; 下下
		sub dh, 2
		jmp STOP

	EAX_9:    ; 下下右
		sub dh, 2
		add dl, 1
		jmp STOP

	EAX_10:   ; 下右
		sub dh, 1
		add dl, 1
		jmp STOP

	EAX_11:   ; 下右右
		sub dh, 1
		add dl, 2
		jmp STOP

	EAX_12:   ; 下下左
		sub dh, 2
		sub dl, 1
		jmp STOP

	EAX_13:   ; 下左
		sub dh, 1
		sub dl, 1
		jmp STOP

	EAX_14:   ; 下左左
		sub dh, 1
		sub dl, 2
		jmp STOP

	;需要計算兩個，超出邊界或碰到player
	STOP:
		player:
		;計算是否碰到player
			.IF dh >= 28
				mov ebx, [ebp+16]
				and ebx, 00FFh
				.IF dl >= bl 
					add bl, 4
					.IF dl <= bl
						mov dh, 27
						mov esi, 1
						mov WORD PTR [ebp+12], 0
					.ENDIF
				.ENDIF
			.ENDIF

			.IF dh <= 6
				mov ebx, [ebp+16]
				and ebx, 00FFh
				.IF dl >= bl
					add bl, 4
					.IF dl <= bl
						mov dh, 7
						mov esi, 1
						mov WORD PTR [ebp+12], 0
					.ENDIF
				.ENDIF
			.ENDIF

		;計算是否超出邊界
		border:
			;邊界上的判斷
			.IF dh >= 29
				.IF dl<=42 || dl>=63
					mov dh, 28
					mov esi, 1
					mov WORD PTR [ebp+12], 0 ; 修改path
				.ENDIF
			.ENDIF
			.IF dh <= 5
				.IF dl<=42 || dl >=63
					mov dh, 6
					mov esi, 1
					mov WORD PTR [ebp+12], 0
				.ENDIF
			.ENDIF
			.IF dl >= 5+75
				mov dl, 5+74
				mov esi, 1
				mov WORD PTR [ebp+12], 1
			.ENDIF
			.IF dl <= 20
				mov dl, 21
				mov esi,1
				mov WORD PTR [ebp+12], 1
			.ENDIF

		continue:
	pop ebp
	pop eax

	ret
BALL_MOVE ENDP

END