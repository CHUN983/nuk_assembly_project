Include Irvine32.inc

.data
	arr BYTE "test",0
.code

main PROC
	mov edx, OFFSET arr
	call WriteString


	Invoke ExitProcess, 0
main ENDP
END main