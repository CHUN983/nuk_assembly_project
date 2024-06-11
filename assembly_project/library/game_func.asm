INCLUDE Irvine32.inc

.data


.code

;-----------------------------------------------------------
UPDATE_PLAYER PROC
;
;���}�Ⲿ�ʪ�function
;Receives: eax,edx,esi,ebp
;Returns: edx
;Require: �ݭn��push����e�צh�j
;Last update: 6/8/24
;-----------------------------------------------------------

	;�������A�p�G����(a)�A�h�k��Ϊť��л\�F�V�k�h�Ϥ�
	push ebp
	mov ebp, esp
	push eax
	push edx

	.IF al == 'w'
		call Gotoxy
		mov al, " "
		call WriteChar

		sub dh, [ebp+8]
		call Gotoxy
		mov al,"*"
		call WriteChar

		pop edx
		dec dh
		jmp for_new_direction
	.ENDIF

	.IF al == 's'
		dec dh
		call Gotoxy
		mov al, " "
		call WriteChar

		add dh, [ebp+8]
		call Gotoxy
		mov al,"*"
		call WriteChar

		pop edx
		inc dh
		jmp for_new_direction
	.ENDIF

	;�U�����O�H�e�g���A�L�̫��]�ۤ����D
	cmp al, 'a'
	je left_move
	cmp al, 'j'
	je left_move

	sub dl, BYTE PTR [ebp+8]	
	left_move:
		add dl, BYTE PTR [ebp+8]
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

		add dl, BYTE PTR [ebp+8]

		show_star:
			call Gotoxy
			mov al, "*"
			call WriteChar

		pop edx

	for_new_direction:

	pop eax
	pop ebp
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
				mov ebx, [ebp+16]				;x_Pos
				and ebx, 00FFh
				.IF dl >= bl 
					add bl, 4
					.IF dl <= bl
						mov dh, 27
						mov esi, 1
						mov bl,BYTE PTR [ebp+20] ;press right or left or not
						mov WORD PTR [ebp+12], 0 ;path
						.IF bl=='a'
							mov WORD PTR [ebp+12], 3
						.ENDIF
						.IF bl=='d'
							mov WORD PTR [ebp+12], 2
						.ENDIF
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
						mov bl,BYTE PTR [ebp+20] ;press right or left or not
						mov WORD PTR [ebp+12], 0
						.IF bl=='j'
							mov WORD PTR [ebp+12], 3
						.ENDIF
						.IF bl=='l'
							mov WORD PTR [ebp+12], 2
						.ENDIF
					.ENDIF
				.ENDIF
			.ENDIF

		;�p��O�_�W�X���
		border:
			;��ɤW���P�_
			.IF dh >= 29
				.IF dl<=42 || dl>=61
					mov dh, 28
					mov esi, 1
					mov WORD PTR [ebp+12], 0 ; �ק�path
				.ENDIF
			.ENDIF
			.IF dh <= 5
				.IF dl<=42 || dl >=61
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
			.IF dl <= 21
				mov dl, 22
				mov esi,1
				mov WORD PTR [ebp+12], 1
			.ENDIF

		continue:
	pop ebp
	pop eax

	ret
BALL_MOVE ENDP

;---------------------------------------------------------------------------
;��y�I�������player�ɡA�P�_�L���������A�O����(ex.��V����A���V���)�A
;�è̤��P�ɭԬ۹��������A�ܤ�
;receivers:eax, ebp
;return: eax�Astate�]�|�����([ebp+12])
;require: �ݭn���ޤJpath��state�A�̫�n��pop���覡��Ȧs�^path��state
BALL_STATE PROC
;----------------------------------------------------------------------------
	push ebp
	mov ebp, esp
	;�P�_�O�l���k�٬O�����٬O�S��
	mov eax, [ebp+12]			 ;mov eax, path
	cmp eax, 0
	je PATH_0
	cmp eax, 1
	je PATH_1
	cmp eax, 2
	je PATH_2
	cmp eax, 3
	je PATH_3
	jmp CONTINUE

	PATH_0:    ; �p�G�O?�V�R��
		mov eax, [ebp+8]	  ;mov eax, state
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

	PATH_1:    ; �p�G�O���V�R��
		mov eax, [ebp+8]
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

	PATH_2:    ; �p�G�O?�V�k��
		mov eax, [ebp+8]
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
		mov eax, 10
		jmp CONTINUE
	STATE_3_2:
		mov eax, 11
		jmp CONTINUE
	STATE_4_2:
		mov eax, 11
		jmp CONTINUE
	STATE_5_2:
		mov eax, 8
		jmp CONTINUE
	STATE_6_2:
		mov eax, 9
		jmp CONTINUE
	STATE_7_2:
		mov eax, 13
		jmp CONTINUE
	STATE_8_2:
		mov eax, 2
		jmp CONTINUE
	STATE_9_2:
		mov eax, 3
		jmp CONTINUE
	STATE_10_2:
		mov eax, 4
		jmp CONTINUE
	STATE_11_2:
		mov eax, 4
		jmp CONTINUE
	STATE_12_2:
		mov eax, 1
		jmp CONTINUE
	STATE_13_2:
		mov eax, 5
		jmp CONTINUE
	STATE_14_2:
		mov eax, 6
		jmp CONTINUE

	PATH_3:    ;�p�G�O?�V����
		mov eax, [ebp+8]
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
		mov eax, 8
		jmp CONTINUE
	STATE_3_3:
		mov eax, 9
		jmp CONTINUE
	STATE_4_3:
		mov eax, 10
		jmp CONTINUE
	STATE_5_3:
		mov eax, 13
		jmp CONTINUE
	STATE_6_3:
		mov eax, 14
		jmp CONTINUE
	STATE_7_3:
		mov eax, 14
		jmp CONTINUE
	STATE_8_3:
		mov eax, 5
		jmp CONTINUE
	STATE_9_3:
		mov eax, 1
		jmp CONTINUE
	STATE_10_3:
		mov eax, 2
		jmp CONTINUE
	STATE_11_3:
		mov eax, 3
		jmp CONTINUE
	STATE_12_3:
		mov eax, 6
		jmp CONTINUE
	STATE_13_3:
		mov eax, 7
		jmp CONTINUE
	STATE_14_3:
		mov eax, 7
		jmp CONTINUE

	CONTINUE:
		mov [ebp+8], eax

	pop ebp
ret
BALL_STATE ENDP

;-----------------------------------------------------------------
;��y���C��(�ثe����)
;receives: edx,eax
;return : �L
SET_BALL_COLOR PROC
;-----------------------------------------------------------------
	push edx
	push eax
	
	mov eax,11           ;����⪺�ܼƩ��eax
	call SetTextColor   ;call setcolor��eax���ȵ�setcolor
	;mov edx,OFFSET the@ ���ܼƪ���m���edx
	pop eax
	push eax
	call WriteChar
	mov eax,2
	call SetTextColor   ;��set color�ܦ^�¦�
	
	pop eax
	pop edx
	ret 
SET_BALL_COLOR ENDP


END

