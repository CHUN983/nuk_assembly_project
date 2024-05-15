INCLUDE mylib.inc

.code

;-----------------------------------------------------------
UPDATE_PLAYER PROC
;
;讓腳色移動的function
;Receives: eax,edx
;Returns: eax
;Last update: 5/15/24
;-----------------------------------------------------------

	cmp al, 'a'
	je left_move
	sub dl, 4
	left_move:
		add dl, 4
	call Gotoxy
	mov al, " "
	call WriteChar

	ret
UPDATE_PLAYER ENDP


END