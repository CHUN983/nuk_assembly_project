INCLUDE Irvine32.inc

.data


.code

;-----------------------------------------------------------
UPDATE_PLAYER PROC
;
;���}�Ⲿ�ʪ�function
;Receives: eax,edx,esi
;Returns: edx
;Last update: 5/15/24
;-----------------------------------------------------------

	;�������A�p�G����(a)�A�h�k��Ϊť��л\�F�V�k�h�Ϥ�
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

	;��X�{�A�p�G�O�V���A�h����X�{*
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
		push edx   ; ���F�X�{*�A�]����m�u�O�Ȧs�A����n���ܼ�pos
		cmp esi, 0; �V�����ܡA��������Gotoxy
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
;��ball����ebx�W��state���ʡA���ʧ���ݬO�_�W�X�h�A�W�Lesi�]�w��1
;receives: eax, ebx, edx, esi, ebp
;return: edx, esi, [epb+12](for path)
;require: edx���ȥ����Oball����m!
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

	EAX_1:    ; �W�W
		add dh, 2
		jmp STOP

	EAX_2:    ; �W�W�k
		add dh, 2
		add dl, 1
		jmp STOP

	EAX_3:    ; �W�k
		add dh, 1
		add dl, 1
		jmp STOP

	EAX_4:    ; �W�k�k
		add dh, 1
		add dl, 2
		jmp STOP

	EAX_5:    ; �W�W��
		add dh, 2
		sub dl, 1
		jmp STOP

	EAX_6:    ; �W��
		add dh, 1
		sub dl, 1
		jmp STOP

	EAX_7:    ; �W����
		add dh, 1
		sub dl, 2
		jmp STOP

	EAX_8:    ; �U�U
		sub dh, 2
		jmp STOP

	EAX_9:    ; �U�U�k
		sub dh, 2
		add dl, 1
		jmp STOP

	EAX_10:   ; �U�k
		sub dh, 1
		add dl, 1
		jmp STOP

	EAX_11:   ; �U�k�k
		sub dh, 1
		add dl, 2
		jmp STOP

	EAX_12:   ; �U�U��
		sub dh, 2
		sub dl, 1
		jmp STOP

	EAX_13:   ; �U��
		sub dh, 1
		sub dl, 1
		jmp STOP

	EAX_14:   ; �U����
		sub dh, 1
		sub dl, 2
		jmp STOP

	;�ݭn�p���ӡA�W�X��ɩθI��player
	STOP:
		player:
		;�p��O�_�I��player
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

		;�p��O�_�W�X���
		border:
			;��ɤW���P�_
			.IF dh >= 29
				.IF dl<=42 || dl>=63
					mov dh, 28
					mov esi, 1
					mov WORD PTR [ebp+12], 0 ; �ק�path
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