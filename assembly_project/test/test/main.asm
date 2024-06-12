INCLUDE Irvine32.inc
INCLUDELIB Winmm.lib
PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data	
	SND_ALIAS    DWORD 00010000h
	SND_RESOURCE DWORD 00040005h
	SND_FILENAME DWORD 00020000h
	SND_ASYNC DWORD 0001h
	gameMusic BYTE "Never_give_you_up.wav",0

.code
main proc
	invoke PlaySound, OFFSET gameMusic, 0, 00000008h
	
	Invoke ExitProcess,0
main endp
end main