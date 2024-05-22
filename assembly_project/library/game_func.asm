INCLUDE mylib.inc

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


END