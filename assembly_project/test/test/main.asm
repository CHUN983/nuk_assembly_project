include irvine32.inc
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
	
	
	arr1 BYTE '  ',0ah,0dh
    BYTE 'ttfttttttttttttttttffLfttffttfffttttt1111111111111tffffftttt111111111111111tttffttftttttttt11111tttt',0ah,0dh
    BYTE 'ttttttttttttttttffffLftttfffffffffftt11111iii1i11ffffffffttttttt111111tttttffffftfLLfttttttt111ttttt',0ah,0dh
    BYTE 'ttttttttttttttttffffftttffffffffffttt11;::,,,,,:;1ffffffffttttttt1111ttfffffffLfttffffffttt1111ttttt',0ah,0dh
    BYTE 'ttttttttttttfffftttffttffffffffttttt1;:,,,,,,,,,,:tffffftttttt111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
    BYTE 'ttttttttttffLLLLftttttffLLfttttttft;,,,,,,,,:::,:itfffftttfffft11t111tt111ttfffLLfttfftt1ttt11tttttt',0ah,0dh
    BYTE 'ttttttttffLLLLLLLffttfLLLfttfffttt;,,,,,,:;ii1111tttttttffffffftt1111tftt111tttfLLfttt11tffftttttttt',0ah,0dh
    BYTE 'tttttttfffLLLLLLLLffttfttttffffft1:,,,,,:;iii11111fttttffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
    BYTE 'tttttttfLLLLLLLLLffttttffftfffftt1:,,,,,:;;;iiiii1ftttfffffffffftt1111t11ttffttttttt1ttffffffffffttt',0ah,0dh
    BYTE 'tttffttfLLLLLLLLLLfttfttffftttttft::;;::;;iiiiiii1ttttttttfffffftt1111tft1ttt1tffttt11tffffLLLLLfttt',0ah,0dh
    BYTE 'ttffffffffLLLLLLffftfffttttffftfLfi:;i;;;;;iiiiii1tffftt11tfffft111111ffftt1tt1tt1tttttfffLLLLLLffff',0ah,0dh
    BYTE 'tffftfttttfLLLfftttttffffttfLLftfff;:;;;;;;;iiiii1tffffftt1tttt11tt111fffttffft1ttfftttffLLLLLLLLffL',0ah,0dh
    BYTE 'tttttttttttfffttttttttttttttffffffft;;;;;;;;iiii1ttffffffft1ttt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
    BYTE 'ttffffffffftttfffffffffttft1tfffttt1i;;;;;;;;iii1ttfffftttt1tffft11111tfttffftttttttttttttfLLfffffft',0ah,0dh
    BYTE 'ttffffffffftttfffffffftttffttttti::i;;;i;;;;ii1111tttttt11tttttfftt111tt1tffttffttfffffLLffffffLLfLL',0ah,0dh
    BYTE 'ttffffffffttttfffffffft1ttt11i;:,.,ii;;iiiii11:i1111tt111tfft1ttft11111tt1ttttffttttfffLLLfttfLLLLLL',0ah,0dh
    BYTE 'tttffffffffttffffffftt111i;:,......:11;;iiiii1::;;;::;i1ttffft11t11111tfftttttttt1ttffffLfftttLLLLLf',0ah,0dh
    BYTE 'ttttttttfffttfttt1111ii;:,.........,it1iii;;1ti::;;,..,:1tfffft1111111ttttt11tfft11ttffffffftfLLLLLf',0ah,0dh
    BYTE 'tfttttttttt1tt111111;,..............;1111ii1ti:;:;;,,,,.:tffftt11t1111tttt1tt1tffftt1111ttfftfLffftt',0ah,0dh
    BYTE 'tfttfffftt1111ttttti,................:;;;i;;;,,:;;:,,,,,,itt1111tt1111ttt11tf1tffffftttttt1tttttffft',0ah,0dh
    BYTE '111tfffffft1ttttttt:..........,,......:;;;;;;,.,i;,,,,,,.;t111111111111t111tft1tffffttfffftt1ttffLLf',0ah,0dh
    BYTE '111ttfffft111ttttt1,............,.....,;;;;;:,.:1i,......;11t111111111111t11tt1tfffttfffffffttfLfLLL',0ah,0dh
    BYTE 'tttt1tftt11111tt11;....................:;;;;:,.:1i,......:tt11111111111111111t1tffttttffffftt1tffLLf',0ah,0dh
    BYTE 'ttft11ttttttt1111i,....................,:;:;:.,,;:,......:111tttt11111111tttt11tttfLffttfft1tttttfft',0ah,0dh
    BYTE 'tttttt1ttttttt111;......................,;:;:..,:,.......:11tttttt111111tttffttttffLLffttttffffttttf',0ah,0dh
    BYTE 'tffft11ttttttt11i,.......................:::,..,:,.......,1tttttttt11111ttttfftttffffffftttftttffttf',0ah,0dh
    BYTE 'tffft11ttttttt11;........................,:::,..:,........;11tttt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
    BYTE 'tttft11ttttttt11;......................,:;;;;;;,:,........,111tt1111111111tttttttffLLfLfttfffffffttf',0ah,0dh
    BYTE 'tfttt11ttttttt11i.....................:::;;;;;:.:,....... ,1t11111111111t111tftttfffLLLfttfffftffttf',0ah,0dh
    BYTE 'tttt111ttttttt11:....................,:::;;;;;.,:,..........,:;iii11111ttt11tffttffffffftttfftfffttt',0ah,0dh
    BYTE 'ttttt11tt1111111,....................,:::;;;;,.,:..........   .::;;;;ii11111ttftttftfffft1tftttffttt',0ah,0dh
    BYTE 'ttttt11ttttttt11i................. ....,,,,.....:.... ........,:::;;;;ii111tt1tttfffffttt1tftttffttt',0ah,0dh
    BYTE 'ttttt11ttttttt11ti,.     .........,...   .. ....,..:,..    ....,:::;;;iii1ttt1111ttttttt11tttttffttt',0ah,0dh
    BYTE '11111111ttt111111t1ii;;;,.......................:..,.:1;:,,..   ..,;i1i1t1ttt1111ttttttt111ttttttt1t',0ah,0dh
    BYTE '1111111111111111111ttttt:,......................:..  ,tttt111i;;;;i1tt1111111111111111111111111tt111',0ah,0dh
    BYTE '111111111111111111111111:,..................,...:.....it1t1ttttttttt11111111111111111111111111111111',0ah,0dh
    BYTE '111111111111111111111111;,..................,...:.... ;tttt11t11t11111111111111111111111111111111111',0ah,0dh
    BYTE '111111111111111111111111:...................,..,:.....:ttttttttttt1111111111111111111111111111111111',0ah,0dh
    BYTE '11111111111111111111111i,...................:,.,:.....,1ttttttttt11111111111111111111111111111111111',0ah,0dh
    BYTE '11111111111111111111111;...................,::..:.....,1ttttttttt1t11t1111t1111111111111111111111111',0ah,0dh
    BYTE '11111111111111111111111:.................. :;:,,:......itttttttttttttt111ttt11t1111t111t1ttttttt1111',0ah,0dh
    BYTE '111111111111111111111t1:.................. :;;:::......;ttttttttttttttttt1ttt1ttt11ttttttttttttt1111',0ah,0dh
	
arr2 BYTE ' ',0ah,0dh
 BYTE'  ttftfffttttttttttfffffffttftt1ttttttt111tttt1111111tttt1tt111tttt111111tttt1ttttttttttttttt111111111',0ah,0dh
BYTE 'ttfttttttttttttttttfLLLftfffffffffftttt111tt11111ttffffftttt1111111111111111ttttttfttttttttt111111t1',0ah,0dh
BYTE 'ttttttttttttttttffffLfftffffffffLLffttttttftt111ttfffffftttttttt111111ttttttffffttfffttttttt111111tt',0ah,0dh
BYTE 'ttttttttttttttttfffLfttffffffLLffffttttttttttt1tfffffffffftttttt111111tffffffffftttfffftttt11111ttt1',0ah,0dh
BYTE 'ttttttttttttffLfttfffttfffffffffttfftttttt1t1tt11tfffffftttttt111t111111ttffffLLffttfffftt111111tttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfttttftfLftttttttffffttttffffttttfftt11t111tt111ttfffLffttfftttttt1111tttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLffttfffftfLfttttttffttt11111ttttffffffftt1111tft11111ttffffttt11tfftt11ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLfftffttttffLffftfftttttft1i::::iitffffffffftt111tft1tttt1ttffLfttttfffffttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLfttttffftffffftfttttttff1:,,,,,,,,::itfffffffft11111111ttttttttttt1tfffffffffffttt',0ah,0dh
BYTE 'tttffttffLLLLLLLLLfttfftffffffffLLLftttttt::,:::::1tfffftfft11111ttt1ttt1tfttt11ttffffffffLfttt',0ah,0dh
BYTE 'tffffffffLLLLLLLffftfLfffttfLLffLLLftttttiiii11111:i11ttffft111111tfft11t11tt1tttttfffLLLLLLfttf',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttfti:iiiiiiiiit111tt111t1111tffttfftt11ttftttfffLLLLLLffff',0ah,0dh
BYTE 'ttttfttttffffftttttttttttttfLLLffLLfttttt1iiiiii1tft11tt1111111tfftfffftttttttttttfLLfffttfff',0ah,0dh
BYTE 'tfffffffffftttfffffffffttffttLLfffLfttttt11iiiiiiii1tt11tfftt11111ttt1fffttt1tttttttttfffftttttt',0ah,0dh
BYTE 'ttffffffffftttfffffffffttffftffttftttttff1iiiii1iii111tt1ttttt1111t111ffttffttfffffLffttttffffff',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttffftttttft1iiii1iii111tfft11ttt111111t1tt1tfft1ttffffLLftttLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftttttttt11fffftttt1t111iiiiiiiii11ttffft11111111ttttttt1tt11ttffffLfftttfLLLLf',0ah,0dh
BYTE 'tttttttffffttfffttttttttffttt11tffttttttt11ttiiiiii11i1ffftt1111111tttt111tttt11ttttffffftffLLLff',0ah,0dh
BYTE 'tfttttttttttttttttttttfffftttt11tfftttttt111t1iiiii1i,,:i1111t1111ttt111t1tfftt11111ttfftffffftt',0ah,0dh
BYTE 'ttttfffftttttttfffftttffffttffttttft111tt11111iiiii1,,....,:::i11tt111tt11tffftttttttt1tttttttt',0ah,0dh
BYTE 't11ttffffftttffffffttttfffttffttttft1111111111it,...........,:it111ttt1tffftttttfft11ttfffff',0ah,0dh
BYTE 'tt1ttfffftt1ttfffft111tffttfttttttt1111t1i:11i1i1t1:,,............,itt11tt1tfftt1tfffffft1tffLLf',0ah,0dh
BYTE 'tfttttfttttt11tttt1ttt11ttttttftt111111i:,..:1111iii11,...............tt111t11ttttttttffttt11ffLLf',0ah,0dh
BYTE 'tfftttttttfftttttttffftt111ttffftt11i,.,...,iiii:,,...............:1ttt1111ttfffttttft1tt1ttfft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttttttfffffft1:,..........::::::,,,...............,1ttttt11ttfffffttttffftttttt',0ah,0dh
BYTE 'tfffttttffffftt11ttttttttttfffffft1:...........::::..................,1tttttt1ttfffffttttttttftttf',0ah,0dh
BYTE 'tfffttttfffffft1ttftttfftttttffft11:...........,:::::..................,1tttft11tfffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttffffff11tttttttttttttttttt1...........,::::,...................t1t1111tfffffLfttfffffffttf',0ah,0dh
BYTE 'tfffttttfftttt11tttttttt1tfftttttt1:...........,::::,...... ............,1111tt11fffffLftttffttffttf',0ah,0dh
BYTE 'tttttttttttttt11tttttttt1tffftttft1:...........,:::,,....................it1ttt11tfffffftttffttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttttttffttttttt:...........,::,,.....................:111tt11tttttttt1tttttttttt',0ah,0dh
BYTE 'ttttt1tttttttt11tftttttftttttttttt1,::.......,:,,,....................,,1111t11ttttttt11ttttttfttt',0ah,0dh
BYTE '1tttt1ttfffttt11ttffffffttttfffft11ii1i:.......,:,,,.....................,1tt1111ttttttt111tttttfttt',0ah,0dh
BYTE '1ttt11tttttttt11tttttttttttttttttti:.......,:,,,....... .............,itt1111tttt11t111ttttttt1t',0ah,0dh
BYTE '111111tttttttt11111111ttttttttttt1i:.......,:,,,......................itt11111111111111111111111',0ah,0dh
BYTE '1111111111111111111111ttttttttttt1:...... ,:,,,,.....................itt11t11111111111111111111',0ah,0dh
BYTE '1111111111111111111111tttttttttt1:,::,...... ,:...,.....................ittttt11111111111111111111',0ah,0dh
BYTE '111111111111111111111111tttttttt1i,.....  .... .:........................,i1tttt11111111111111111111',0ah,0dh
BYTE '1111111111111111111111111t11t11111,....,,.... ,:::,,,...................,11ttttt11t1111111t11111111',0ah,0dh
BYTE '11111111111111111111111111111111111iiiiii. ... .::::::,..................,11t1ttt111t11111tttttt1111',0ah,0dh
BYTE '1111111111111111111111111111111111111111:.,.....::::::,..................:111tttttt1tttt11tttttt1111',0ah,0dh
BYTE '1111111111111111111111111111111111111111:::,...,::::::,..,,.............:11tt1ttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh


arr3 BYTE ' ',0ah,0dh
 BYTE'  ttftfffttttttttttffffffftfftttttttttt111tttt1111111ttttttt111tttt111111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttftfLLLftfffffffffftt11111tt11111ttffffttttt1111111111111111ttttttfttttttttt111111tt',0ah,0dh
BYTE 'ttftttttttttttttffffLftttfffffffLLLfttttttftt111ttfffffftttttttt111111tttttffffftfffftttttt1111111tt',0ah,0dh
BYTE 'ttttttttttttttttfffLLttffffffLLffffttttttttttt1tffffffffffttttttt11111tffffffffftttfffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttfffffffffttfftttttt1tttt1ttftfffftt1ttt111t111111ttffffLLffttfffft1111111tttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfttttttfLftttttttfft11i:i11ttfftt11t111tt111tttffffftttttttttt111ttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLLttttttfff1,,,,,,,,:tffffft11111tft11111ttffffttt11tffftt1ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLfftffttttffLffftfftttttfft1:,,,,,::::,tffftttt111tft1tttt1ttffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffffftfftttttfffti:iiii11i:tffffft11111111ttftttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttffttffLLLLLLLLLftffftfLftfftfLLLftttttfft::iiiiiii11i:1ffftft11111ttt1ttt1ttttt11ttfffffLLfLfttt',0ah,0dh
BYTE 'ttfLfffffLLLLLLLLfftfLLfffffLfffLLLfttttt1tt:iiiiiii1tffft11111tffft11t11tt1tttttfffLLLLLLffff',0ah,0dh
BYTE 'tffftfttttfLLLffttttfffffttLLLLfLLLftttft111iiiiiii111tt111t1111tffttfftt11tfft1tfffLLLLLLLffL',0ah,0dh
BYTE 'tttfftttttffLftttttttttttttfLfLffLLfttttttt1iiiii11i1t11t11111111tffttfffttttttt11ttfLLLLffftff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttfftfLLfffLftttttfft1iiiii1i1tt1tfftt11111ttt1tffttt1ttt1tttttffffttffft',0ah,0dh
BYTE 'ttffffffffftttffffffffttfffftffffftttttfffft111iiii1111t1ttttt1111tt11ffttfftttfffffLfttttfffffL',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttffftttttttt11ttiiiiiiii11tft11ttt111111t11t1tfft1tfffffLLftttLLLLLL',0ah,0dh
BYTE '1ttffffffffttfffffffftttttttt11ffffttttt1111tftiiiiiii1,1111111111tttt11111111ttffffLfftttffLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttttttffttt11tffftttttt11ttf1iiiii1:,,.,,::ii11tttt111tttt11ttffffffftffLLLff',0ah,0dh
BYTE 'tfttttttttttttttttttttfffftttt11tfftttttt111tt1iii1t:,,........,:1t111t1tfftt11111ttfftffffftt',0ah,0dh
BYTE 'tftttffffttttttfftftttffffttffttttftt11tt111iit1,,............,11tt11tffffttttttt1tttttttt',0ah,0dh
BYTE 'tttttffffftttfffffft1ttffftfffttttft111111:,.iiii11,.,.............,1tttt1tffftttttfft111tfffff',0ah,0dh
BYTE '1tttffffftt1ttfffftt11tffttfttttttt1111i,....,1iiiii,................,111tt1tfft11tffffftt1tLffLf',0ah,0dh
BYTE 'tftttfftt1ttt1tttt1tttt1ttttttttt1111:,.......i1:::.................,it11t11ttttttttffftt11fffLf',0ah,0dh
BYTE 'tfftttttttfftt1111ttfftt11ttfffftt1ti..........:i:::,..................ittt111t1tffttttft1tt1tffft',0ah,0dh
BYTE 'ttttttttttttttt11tttttttt1tffffffftti,.........,::::::,..................itttt11ttffffftttttfftttttt',0ah,0dh
BYTE 'tfffttttfffffft11ttttttttttffffffft1i,.........,:,:::,...................,1tttt11tfffffttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11tftttfftttttffft1111:.........,:,:::,....................tt111tfffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttfffffft1tttttttftttttttttt111.........,:,::,,....................,111111fffffLfttfffffffttf',0ah,0dh
BYTE 'tffftttttttffft11tttttttttffttttfft11i.........,:.:,,......................:1tt11fffffLftttffttffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttttt1tffftttfft111:....... ,:.:,,.......................1tt11tfffffftttffftffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttttttfttttttft111i,...... ,:,,,,......................,itt11ttttttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt11tfttttfftttttffttt1111i,...... ,:.,,,......................:11111ttttttt11ttttttfttt',0ah,0dh
BYTE '1tttt1ttftfttt11tfffffffttttfffft11111,....... ,,.,,....... ...............it1111ttttttt111tttttfttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttttttttttttttt1111,....... ,,.,,......................:tt11111ttt11t111ttttttt1t',0ah,0dh
BYTE '11t111tttttttt111t1111tttttttttt1iiii:,,...... ,,.........................t111111111111111111111111',0ah,0dh
BYTE '111111111tt11111111111ttttttttt1iiii:....... ,,............ ...........tttt1111111111111111111111',0ah,0dh
BYTE '1111111111111111111111ttttttttt1iii... ....,::::,....,:::,,.........1ttttt111111111111111111111',0ah,0dh
BYTE '111111111111111111111111tttttttt1iii:  .,....,:::::... .:,.....,1ttttttttt111111111111111111',0ah,0dh
BYTE '1111111111111111111111111tt1111111i,,.,:i: ...,:::::.....::.....,1ttttttttt11t1111111t11111111',0ah,0dh
BYTE '11111111111111111111111111111111111:.:1tti,....,:::::.... ,,.....ittttttttt111t11111ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111111111ttt,,....,:::::,... .,:,.,,..:ttttttttttt1tttt11tttttt1111',0ah,0dh
BYTE '11111111111111111111111111111111111111t1,,,....:::::,.....::......,1ttttttttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr4 BYTE ' ',0ah,0dh
 BYTE'  ttftffftttttttttffffffLftfftttttttttt111tttt1111111tttt1tt111tttt111111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttfffLLLftfffffffffttt11111tt11111ttfffft1ttt1111111111111111tttttffttttttttt111111tt',0ah,0dh
BYTE 'ttftttttttttttttffffLffttfffffffLLLfttttttfttt11tffffffftttttttt111111tttttffffftfffftttttt1111111tt',0ah,0dh
BYTE 'ttttttttttttttttfffLLttffffffLLffffttttttttttt1ttt1iiiii1tttttttt11111tffffffffftttfffffttt1111t1tt1',0ah,0dh
BYTE 'ttttttttttttffffttffftffffffffffttffttttt11tttt1i::,,,,,,:111111t111111ttffffLLffttfLfftt11111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttfft1i,,,,,,,,,:ttt11t111tt111tttffffftttftttttt111ttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLLtttttffffti::iii::1ftt11111tft11111ttffffttt11tffftt1ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffttttffLffftffttttffffft:iiii11111i:iftttt111ttt1tttt11tffLfttttfffffttttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffLLftfftttttffffft:iiiiii1fftt11111111ttftttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttfftfffLLLLLLLLLftffftfLftffffLLLftttttfffftiiiiiitffft11111ttt1ttt1tfttt11ttfffffLLfLfttt',0ah,0dh
BYTE 'ttfLfffffLLLLLLLLffffLLfffffLfffLLLLtttttttff1iiiiiii111tfft111111ffft11t11tt1tttttfffLLLLLLffff',0ah,0dh
BYTE 'tffftftttffLLLffttttfffffttLLLLfLLLffttftt11t1iiiiiiii1tt111t1111tffttfftt11tfft1tfffLLLLLLLfff',0ah,0dh
BYTE 'ttffftttttffLftttttttttttttfLLLffLLftttttttft111iiiii1111111111111tffttfffttttttt11ttfLLffffftff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttfttfLLfffLftttttfffft11iiiii1t1ttttt11111ttt1tffttt11ttttttttfffftfttft',0ah,0dh
BYTE 'ttffffffffftttffffffffttfffftffffftttttfffft11t1iiii1ii1ttttt1111t111ffttfft1tfffffLfttttfffffL',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttffftttttttt11tft1iiii1i,:i1ttt11111t11t1tfft1ttffffLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftttttttt11ffffttttt1111tftiiiiiii1,,...,:ii1tttt1111tt11ttffffffftttffLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttttttffttt11tffftttttt11t1iiiiii1t:,.........,:1t111ttt111ttffffffftffLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttttttfffftttt11tfftt11tt1i:,.:iitti,,............,1111ttttt11111ttfftffffftt',0ah,0dh
BYTE 'tfttfffftttttttfffftttffffttffttttft1111i:....,iii11.,,.............:1tt1ttffffttttttt1ttttttft',0ah,0dh
BYTE 'tttttffffftttffftffttttffftfffttttft1i:,.......::,................:tttt1tffftttttfft11ttfffff',0ah,0dh
BYTE '1t1tffffftt1ttfffftt11tffttftttttttt1,.........,ii,.................:11tt1tfft11tfffffft1fLLfLf',0ah,0dh
BYTE 'tftttfftt1ttt1tftt1ttt11ttttttttt111i,.........,11::,.................,1t1t11ttttttttfftt111fffLf',0ah,0dh
BYTE 'tfftttttttffttt111ttfftt11ttffffftt11,.........,i::::,..................,1tt11111ffft1ttt11tt1tffft',0ah,0dh
BYTE 'ttttttttttttttt11tttttttt1tffffffft11..........::::::,...................tt1111tfffftttttffftttttt',0ah,0dh
BYTE 'tfffttttfffffft11ttttttttttffffffft11:..........:::::,..,:,...............ittt1tttttffttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11tftttffttttfffft1111:..........:::::,..1i:,..............1t11tfffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttfffffft1tttttttftttttttttt111..........::,:,...ii,.............:1111tffffLfttfffffffttf',0ah,0dh
BYTE 'tffftttttttfft11ttttttttttfftttttft11i,.........::,,,...i:..............111tffffLfttfffttffttf',0ah,0dh
BYTE 'tttttttttttttt111tttttttttffftttfft11i,.........::,,,...i:..............:111tfffffftttffttffttt',0ah,0dh
BYTE 'tttttttttttttt11ttttttttttfftttttft111:.........:,,,....:::.............,1t11ttttttt11tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tfttttfftttttfftttt111:.........:,,,......,::::..,.........,i1111ttttttt11ttttttfttt',0ah,0dh
BYTE '1tttt1ttfttttt11tfffffffttttfffft1111i:,........:,,,..... .......,,...... .it1111ttttttt111tttttft1t',0ah,0dh
BYTE '1tttt1tttttttt11ttttttttttttttttt1iiii,........:...........  ...........:itt11111ttt1t1111ttttttt1t',0ah,0dh
BYTE '111111tttttttt111tt111ttttttttttiiii:... ....:,,...................:i1tttt11111111111111111111111',0ah,0dh
BYTE '111111111tt11111111111tttttttttt1. .,....::::..................:1tttttt1111111111111111111111',0ah,0dh
BYTE '1111111111111111111111ttttttttttt1i::..:1,...::::...................ttttttt111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111tttttttt111i,.,it1....::::,..................,1ttttttttt111111111111111111',0ah,0dh
BYTE '1111111111111111111111111tttt11111111ii1t1i:...,::::,........,..........itttttttt11t1111111tt1t11111',0ah,0dh
BYTE '11111111111111111111111111111111111111tt1:....:::::.......,...........:1ttttttt111t11111ttttt11111',0ah,0dh
BYTE '111111111111111111111111111111111111111ti,,....::::,..................,ittttttttt1tttt11tttttt1111',0ah,0dh
BYTE '111111111111111111111111111111111111111t:,:.,.::::,..................111t1ttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr5 BYTE ' ',0ah,0dh
 BYTE'  ttftffftttttttttffffffLftfftttttttttt111tttt1111111tttt11t111tttt111111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttfffLLLftfffffffffttttt1111t11111ttffffftttt1111111111111111tttttfftttttttt1111111tt',0ah,0dh
BYTE 'ttftttttttttttttffffLffttffffffffLLfttttttfttt11ttt1iiiii11tttt111111tttttffffftffffttttttt111111tt',0ah,0dh
BYTE 'ttttttttttttttttfffLLttffffffLLffffttttttttttt1tt1::,,,,,,:1ttt111111tfftfffffftttfffffttt1111t1tt1',0ah,0dh
BYTE 'ttttttttttttffffttffftffffffffffttfftttttt1ttt11i:,,,,,,,,,:1111t1111111tffffLLffttfLfftt11111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttffft1:::::it11t111tt111tttffffftttfttttt1111ttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLLtttttfffffti:ii111111i:itt11111tft11111ttffffttt1ttffftt1ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffftttffLffftffttttfffffft:iiiiiiittt1111ttt1tttt11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffLLftfftttttfffffftiiiiiitttt11111111ttftttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttfftfffLLLLLLLLLftffftfLftffffLLLftttttfffff1iiiii1i1i1tttt11111ttt1ttt1tfttt111tfffffLLfLfttt',0ah,0dh
BYTE 'ttfLffffffLLLLLLLffffLLfffffLfffLLLftttttttfft1iiiiiitfft111111ffft11t11tt1tttttffffLLLLLffft',0ah,0dh
BYTE 'tffftfttttfLLLffttttffffftfLLLLfLLLftttftt1111111iiiii111t111t1111tffttfftt11tfft1tffLLLLLLLLfff',0ah,0dh
BYTE 'ttffftttttffLftttttttttttttfLLLffLLftttt1tttt11ttiiiiii111111111111tffttffftttttttt1ttfLLLfffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttfttfLLfffLftttttffft1111iii111tfttt11111ttt1tffttt11ttttttttfLfftfttft',0ah,0dh
BYTE 'ttffffffffftttfffffffffttffftffffftttttfffft11t11iiii1i:1ttft11111111ffttfftttfffffLfttttfffffL',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttffftttttft111tttiiiiiii1,,,:i1111111111t1tfft1ttffffLLftttfLLLLL',0ah,0dh
BYTE 'tttffffffffttffffffffttttttttttfffftttt1111i:iiiii11:,,.....,:i1tft1111tt111tffffLfftttffLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttttttfftt111tfffttt11i,,..:iiii1t1,,..........,:i1111ttt1111tffffffftffLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttttttffffttttt1tffti:,,.....,iiii1ti,,,.............1111ttttt11111ttfftffffftt',0ah,0dh
BYTE 'tttttffffttttttfffftttffffttffttttf1:.........,:,.,,,............:1tt1ttffff11ttttt1ttttttft',0ah,0dh
BYTE 'tttttffffftttffftfft1ttffftfffttttf1,..........,:.:ii:,.........:tttt1tfffttttffft111tfffff',0ah,0dh
BYTE '1tttffffftt1ttfffftt11tffttfttttt1t1,...........ii::,,iii:.........:tttt1tfft11tfffffft1fLLfLf',0ah,0dh
BYTE 'tftttffttttt11tftt1tttt1ttttttttt11i,..........,1i::,.:ii:.........,1t1t11ttttttttfftt111fffLf',0ah,0dh
BYTE 'tfftttttttffttt11tttffttt1tttffft11i,..........,ii:::,.,:iii:..........it111111tfft1ttt11tt1tffft',0ah,0dh
BYTE 'ttttttttttttttt11tttttttt1tfffffftti,...........:::::,....:ii:..........:tt111ttfffftttttffftttttt',0ah,0dh
BYTE 'tfffttttfffffft11ttttttttttfffffft1i,...........:::::,.....,::.... ......,1t111ttttffttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11tftttffttttfffft111:...........:::::,........,..,..........,1111tffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttfffffft1tttttttftttttttttt11:...........::,:,........ ...:,.........:111tffffLfttfffttffttf',0ah,0dh
BYTE 'tffftttttttfft11ttttttttttffttttttti,...........:::,,.............,...........,i1tffffLfttfffttffttf',0ah,0dh
BYTE 'tttttttttttttt111tttttttttffftttfft,::........:::,.............. ...........:11tfffffftttffttffttt',0ah,0dh
BYTE 'tttttttttttttt11ttttttttttfftttttftii1i:.......:::,.......... ..............:t111tttttt11tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tfttttfftttttffttt1iiii,......::,,........................:1111ttttttt11ttttttfttt',0ah,0dh
BYTE '1tttt1ttfttttt11tfffffffttttfffft11iii,......:,,,..........:........   .t1111ttttttt111tttttft1t',0ah,0dh
BYTE '1tttt1tttttttt11tttttttttttttttttt11:i:,,.....:,.................. .i1tt1111tttt1t1111ttttttt1t',0ah,0dh
BYTE '111111tttttttt111t111ttttttttttttt11i:,,:1....,::....................:1ttttt11111111111111111111111',0ah,0dh
BYTE '111111111tt1111111111tttttttttttttt11i1t:....:::::...................tttttttt11111111111111111111',0ah,0dh
BYTE '1111111111111111111111ttttttttttttt111ttt1,,,.,:::::,..................,1ttttttt11111111111111111111',0ah,0dh
BYTE '111111111111111111111111tttttttttt1111111i,::.,:::,...................ttttttttt111111111111111111',0ah,0dh
BYTE '1111111111111111111111111ttttttt11111111t.,,.,,...................,1ttttttt11t1111111tttt11111',0ah,0dh
BYTE '111111111111111111111111111111111111111t1:..,,::,...................ttttttt111t11111ttttt11111',0ah,0dh
BYTE '111111111111111111111111111111111111111ti,,,:::,..................,1tttttttt1tttt11tttttt1111',0ah,0dh
BYTE '111111111111111111111111111111111111111t,,::,ii::,..................it1tttttttttttttttttt11111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr6 BYTE ' ',0ah,0dh
 BYTE'  ttftffftttttttttffffffLftfftttttttttt111tttt1111111tttt111111tttt1111111ttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttfffLLLftfffffffffttttt111tt11111ttffffftttt1111111111111111tttttfftttttttt1111111tt',0ah,0dh
BYTE 'ttftttttttttttttffffLffttfffffffLLLftttttttttt11ttt1iiiii11tttt111111ttttttfffftffffttttttt111111t1',0ah,0dh
BYTE 'ttttttttttttttttfffLLttffffffLLffffttttttttttt1ttt:,,,,,,,:itttt11111tfftfffffftttfffffttt1111t1ttt',0ah,0dh
BYTE 'ttttttttttttffffttffftffffffffffttfftttttt1tttt11i:,,,,,,,,,:i111t1111111tffffLLffttfLfft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttffft1::,t111111tt111tttffffftttftt1tt1111ttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLffttfffftfLLtttttffffff1,:iiii111111:tt11111tft11111ttffffttt11tffft11ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffftttffLffftffttttfffffffi:iiiii1ttt1111ttt1tttt11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffLLftfftttttfffffff1iiii1ttt11111111ttftttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttfftfffLLLLLLLLLffffftfLftffffLLLftttttfffff1iiiiiiiiii1itttt11111ttt1ttt11tttt11ttfffffLLfLfttt',0ah,0dh
BYTE 'tffLLffffLLLLLLLLffffLLftffLLLffLLLftttttttffftiiiii1ii1tft111111ffft11t11tt1tttttffffLLLLLffft',0ah,0dh
BYTE 'tfffffttftfLLLffttttfffffttLLLLfLLLftttft111tt111iiiiii1tt111t1111tffttfftt11tfft1tffLLLLLLLLfff',0ah,0dh
BYTE 'ttttfttfffffLftttttttttttttfLLLffLLftttt1tttt11ttiiiiii111t11111111tffttffftttttttt1ttfLLLfffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttfftfLLfffLftttttffft11t1iiii11ttttt11111ttt1tffttt11ttttttttfLfftftttt',0ah,0dh
BYTE 'ttffffffffftttfffffffffttffftffftftttttffft111t11iiii1ii11tttt1111tt11ffttfftttfffffLfttttffffff',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttffftttttttt11111iiiiiii1,:1tttt11111t11t1tfft1ttffffLLftttfLLLLL',0ah,0dh
BYTE 'tttffffffffttffffffffttttttttt1tffftttt11i:,:iii11,,..,,:i111tttt1111tt11ttffffLfftttffLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttttttffttt11ttff1ii:,....,::ii11ti,,.......,:ittt111ttt1111ttffffffttfLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttttttfffftttt11tff,,........iii1tti,,,,:::,....,i11111ttttt11111ttfftffffftt',0ah,0dh
BYTE 'tfttfffffttttttfffft1tffffttfft1ttt:..........:i...,iiii:.....,i1tt1ttffff11ttt1t1ttttttft',0ah,0dh
BYTE 'ttttfffffftttfffffft11tffftffftttti,..........,:,...,iiii,......tttt1tffftttttftt111tfffff',0ah,0dh
BYTE '1tttffffftt1ttfffftt111ffttft11tt1,...........i:,.....:iii,......tttt1tfft11tffffftt1fLLfLf',0ah,0dh
BYTE 'tttttffttttt11tftt1tttt1tttt1tttti,............1::,......,iii,......t11t11ttttttttfftt111fffLf',0ah,0dh
BYTE 'tfftttttttffttt111ttfftt111ttfffti.............i::::,.......,,......ttt11111tfft1tttt1tt1tffft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttt11tffffffi,............,:::::,..........,.......:ttt1111tfffftt1tttfftttttt',0ah,0dh
BYTE 'tfffttttfffffft11tttttttttttffffti,............,:::::,..............,....,ittt11ttttttft1ttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11tffttff11t1tfff1...... ....,.,:::::,.....................11111tffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttfffffft1tttttttfttttttti:,......:iiii,,:::,:.......................,111tffffffttfffttffttf',0ah,0dh
BYTE 'tffftttttttfft11ttftttttttfftti,,::,.,:1i.,::::,.........................,i1tffffLfttfffttffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttttt1ttfft1:::,,,:,:i:.,:::,,..........................1tfffffftttffttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttttttfttt1,...,...::, ,:::,..........................11ttttttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt11tfttttfftttttfti,..,....,,,....,:::,.........................:111ttttttt11ttttttfttt',0ah,0dh
BYTE '1tttt1ttfttttt11tfffffffttttffft1::::,,.......,:,:,..................     .:1111ttttttt111tttttfttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttttttttttttttttt11111:......,:,,,..................,::,:1tt1111ttt1t1111ttttttt1t',0ah,0dh
BYTE '111111tttttttt111t1111tttttttttttt111111:......,,.....................,1tttttt1111111111111111111111',0ah,0dh
BYTE '1111111111t11111111111ttttttttttttt11111:......,:,,....................:1t1ttttt11111111111111111111',0ah,0dh
BYTE '1111111111111111111111ttttttttttttt1111t:......,::....................:1ttttttt1111111111111111111',0ah,0dh
BYTE '111111111111111111111111ttttttttt1111111:......,::::,...................,itttttt11111111111111111111',0ah,0dh
BYTE '111111111111111111111111111tttt111111111:......,::,....................:1ttttttt1tt11111ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111111111111:......:::,...................,ittttttt11t11111ttttt11111',0ah,0dh
BYTE '11111111111111111111111111111111111111t1:......:i::,...................:11tttttt1tttt11ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111111111111,......:::,..................,1tttttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr7 BYTE ' ',0ah,0dh
 BYTE'  ttftfffttttttttttfffffLftfftttttttttt111tttt1111111tttt111111ttttt11111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttfffLLLftffffffffftttttt111111111ttfffftt1tt1111111111111111ttttttftttttttt1111111tt',0ah,0dh
BYTE 'ttftttttttttttttffffLftttfffffffLLLft1tttttft111tfftttfttttttttt111111ttttttfffftffffttttttt11111tt1',0ah,0dh
BYTE 'ttttttttttttttttfffLfttffffffLLffffttttttttttt1ttti::i1tttt111111tffffffffftttfffffttt11111ttt1',0ah,0dh
BYTE 'tttttttttttfffffttffftffffffffffttfftttttt1ttt111i,,,,,,,,,11111t1111111tffffLLffttfLfft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttffft1i::,,,,,,,,,:1t11t111tt1111ttffffftttftt1tt1111ttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfLfftfLLtttttfffffti:iiiiiiii::1tt11111tftt1111ttffffttt11tffft11ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffftttffLffftfftttttffffft::iii1i111i:1ttt1111ttt1tttt11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffLfftfftttttfffffftiiiiiitttt11111111ttftttttttt11tffffffffffttt',0ah,0dh
BYTE 'tttfftfffLLLLLLLLLfttfftfLfffffffLLftttttfffft1iiiiiiiitfttt11111ttt1ttt11tttt11ttfffffLLfLfttt',0ah,0dh
BYTE 'ttfLLfffffLLLLLLLfftfLLftfffLLffLLLftttttttfftiiiiii111itfft111111tfft11t11tt1tttttfffLLLLLLLfff',0ah,0dh
BYTE 'tfffffttftfLLLffttttffffftfLLLLfLLLftttft111tt1iiiiiiii1tt111tt111tffttfftt11tfftttffLLLLLLLLfff',0ah,0dh
BYTE 'ttttfttffttffftttttttttttttfLLLffLLftttt1tttt11t1iiiii1111t11111111tffttffftttttttt1ttfLLLfffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttftttfLfffLftttttfffft11iiiii111tfttt11111ttt1fffttt1ttt1tttttfLLffftttt',0ah,0dh
BYTE 'ttffffffffftttfffffffffttfftttfttttttttffft11111iiii1tt11tttt1111t111ffttffttfffffLLfttttfLffff',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttffftt11ttt1111t1iiii1i1itt11ttt111111t11t1ttft1ttffffLLftttfLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftttttt1111tffftttt11i::i1iiiiii1i,:i11t11111tttt1111tt11ttffffLfftttffLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttttttffttt11ttft1ii:,....iiii1t:,...,:i1111tttt111ttt1111tttffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttttttfffftttt11t1:,,........ii:iii1tt1,,,......,,i1tt11111ttttt11111ttfftffffftt',0ah,0dh
BYTE 'tfttfffffttttttfffft1tffffttfft11,..........:::ii11t1:,,,...,,:,...,it11tt11tffffttttttt1ttttffft',0ah,0dh
BYTE 'ttttfffffftttfffffft11tfffttfttt1,....,,......,:i,.......:iii,.,1t1ttt1tffftttttfftt11tfffff',0ah,0dh
BYTE '1tttffffftt1ttfffft1111tfttft11ti,.............i:........:iiiii:..it11tt1tfftt1tfffffft1fLffLf',0ah,0dh
BYTE 'tttttffttttt11tttt1tttt1tttt1tt,..............i1,........,iii,..it111t11ttttttttfftt111fffLf',0ah,0dh
BYTE 'tfftttttttfftt1111ttfft11111tft:...............i:,.........:ii:..,ittt111111tfftttttt1tt1tffft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttt11ttff1,...............,::::::......... ,ii:...itttt111ttffffft1tttfttttttt',0ah,0dh
BYTE 'tfffttttffftttt11ttttttt111tft,...........  ..,::::,...........,::...ttttt11ttfffffttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttf11111:,..... .....,:::::::::...............,...:1ttt1111fffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt11ti,,...........,:i:::::..................,.:tt11111tffffffttfffffffttf',0ah,0dh
BYTE 'tffftttttttfff111ttttttt111,.,,,,...,,..,i:,::,....................,i1t111tffffLfttfffftffttt',0ah,0dh
BYTE 'tttttttttttttt111ttttttt11t:.......,....,::::,:,.......................:1t11tfffffftttffttffttt',0ah,0dh
BYTE 'ttttt11ttttttt11tttttttt11t1,............,,,...,::::.........................:111ttttttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttfft1t1:,............  .. ,:::,........................,i111ttttttt11ttttttfttt',0ah,0dh
BYTE '1tttt1ttfttttt11tfftttfftttttt1::,,::.........,:,,,........................i1111ttttttt111tttttfttt',0ah,0dh
BYTE '1ttt11tttttttt11tttttttttttttttttt111i.........,::,,.................   . .t11111ttt1tt111ttttttt1t',0ah,0dh
BYTE '11t111tttt1tt111111111tttttttttttt111i,........,:,,...................,..,itttt111111111111111111111',0ah,0dh
BYTE '1111111111111111111111tttttttttttt111i,....... ,:....................i111ttttttt11111111111111111111',0ah,0dh
BYTE '1111111111111111111111ttttttttttt1111i,....... ,:,::,................,i1t11tttttt1t11111111111111111',0ah,0dh
BYTE '111111111111111111111111tttttttt11111i,........,:::,..................1ttttttt11111111111111111111',0ah,0dh
BYTE '1111111111111111111111111tttt11111111i........ ,,:::,..................,1ttttttttttt1111111tt1t11111',0ah,0dh
BYTE '1111111111111111111111111111111111111i,........,,:::,...................it111ttttt11t11111ttttt11111',0ah,0dh
BYTE '111111111111111111111111111111111111t1,........,,,:::,..................,1t1ttttttt1tttt11ttttt11111',0ah,0dh
BYTE '11111111111111111111111111111111111111,........,,,::,..................i111ttttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr8 BYTE ' ',0ah,0dh
 BYTE'  ttftffftttttttffffffffLfttftttttttttt111tttt1111111tttt111111tttt1111111ttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttftfLLLftffftffffftttttt111111111ttfffftt1tt1111111111111111ttftttftttttttt1111111tt',0ah,0dh
BYTE 'ttftttttttttttttffffLftttfffffffLLLft11tttfft111tfffffffttt1ttttt11111ttttttfffftffffttttttt11111tt1',0ah,0dh
BYTE 'ttttttttttttttttfffffttffffffLLffffttt1ttttttt1tt111ii11tft1ttttt11111tfftfffffftttfffffttt11111ttt1',0ah,0dh
BYTE 'ttttttttttttffffttfffttfffffffffttffftttt111ttt1:,,,,,,,:i1111111t111111ttffffLLffttfLfft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLLfttttttftt1:,,,,,,,,,1tt111t1111t111tttffffftttftt1ttt111ttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLLfttttffft1i::1tttt11111ttt11111ttffffttt11tffft11ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffftttffLLfftfftttttffffi:iii111111i:ittttt1111ttt1tttt11tfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffLfftfftttttfffff:iiiiiii:ittttt11111111ttttttttttt11tffffffffffttt',0ah,0dh
BYTE 'tttffftffLLLLLLLLLfttfftfLftfffffLLftttttffff1iiiiiiittttft11111ttt1ttt1ttttt11ttfffffLLfLfttt',0ah,0dh
BYTE 'ttfLLfffffLLLLLLLfftfLLftfffLfffLLLftttttttf1i1iiiiii1i1tffft111111tfft11t11tt1tttttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttft1111iiiii1i1i11tt111t1111tffttfftt11tfftttfffLLLLLLLfff',0ah,0dh
BYTE 'tttffttfftffLftttttttttttttfLLLffLLfttttttttt11iiiii11t11111111111tffttfffttttttt11ttfLLLfffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttftttfLfffLftttttffft11iiiiii1t11ttttt11111ttt1fffttt1tttttttttfLLftftttt',0ah,0dh
BYTE 'ttffffffffftttfffffffffttffttfffttttttttfft1111iiii1111111tttt1111tt11ffttffttfffffLffttftffffff',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttffftt11tttt11t1iiiii11tfft11ttt111111t11tttfft1ttffffLLfttffLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt1111fffft1tt11iiii1iiiiiiii1i:1tft11111111tttt111ttt11ttffffLfftttffLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfft11111tft11i:,..,tiiiii1,,,:i1111111tttt111ttt1111tffffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttttttfffftttt11i::,,......iti::iiitt:,,....,:i111ttt111t1ttttt11111ttfftffffftt',0ah,0dh
BYTE 'tfttfffffttttttfffftttffffttft11:...........ii::i11tti,,,,.......,:itt111tt1ttffff11ttt111ttttttft',0ah,0dh
BYTE 'ttttfffffftttffftfft11tfffttftt,............,:11,..............1111ttt1tffftttttfftt1ttfffLf',0ah,0dh
BYTE '1t1tffffft11ttfffft1111tfttft11:.............,:ii,...............:11t11tt1tfft11tfffffft1ffffLf',0ah,0dh
BYTE 'tttttfftt1tt11tttt1ttt11t1111t,..............:i1:,...............,111111t11ftttttttfftt11tfffLf',0ah,0dh
BYTE 'tfftttttttfftt1111tttft11111t1,...............:ii,............,,,.,1tttt11111ttfftttttt1tt1tffft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttt11ttfi................:::::,...........,i:1tttttt11ttffffftttttfftttttf',0ah,0dh
BYTE 'tfffttttftttttt11ttttttt11ttfi................,:::,............,iiii1tttttft1ttffftfttttttttftttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt11111........  .......::::,............:iiiii11ttftt11tfffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttftffff111ttttttt11ti:,....... ,::::,.,:::,............:ii:i11tt1111tfffffffttfffffffttf',0ah,0dh
BYTE 'tffftttttfffft111ttttttt11i,.........,iii,..,:::,.............::,.it1111tt11tffffffttfffftffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttttt11,.,,,,..,,,:,..,:::,.............,::..:i111ttt11tfffffftttffttffttt',0ah,0dh
BYTE 'ttttt1tttttttt111ttttttt11,,,...... .::...,:,,,.....................:111tt11ttttttt11tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttt111,..........,,,,.....,:,,.......................:111111ttttttt11tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttttfft11i:,.....,....  .....,::,......................,1t11111ttttttt111tttttft1t',0ah,0dh
BYTE '1tttt1tttttttt11ttttttttttttt1ii:...........,:,,.....................,it111111ttttttt111ttttttt1t',0ah,0dh
BYTE '11t1111tttttt111111111tt1tttttttt11:...........,:,,..............      .t11111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111ttttttttttt11,.......... ,,................,:,,,:i1tttt1t111111111111111111111',0ah,0dh
BYTE '1111111111111111111111tttttttttt11i,...........,,,,..............:1t11ttttttttttt1111111111111111111',0ah,0dh
BYTE '111111111111111111111111tttttt1111........... ,,:,..............:11ttttttttttttt111111111111111111',0ah,0dh
BYTE '11111111111111111111111111tttt1111........... ,,::...............:111tttttttttt11t1111111tttt11111',0ah,0dh
BYTE '1111111111111111111111111111111111....,,......,,,::................i1ttttttttttttt1t11111ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111111............:,,:,...............1tttttttttttttttttt11ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111111:............,,::...............,1t1tttttttttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr9 BYTE ' ',0ah,0dh
 BYTE'  ttftffftttttttfffffttfLfttftttttttttt111tttt1111111tttt111111tttt111111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttftffLLftffffffffttttttt111111111ttfffft1ttt1111111111111111ttttttftttttttt111111ttt',0ah,0dh
BYTE 'ttftttttttttttttffffLftttfffffffLLLftt1tttttt111ttfffffftttttttt111111tttttffffftffffttttttt111tttt1',0ah,0dh
BYTE 'ttttttttttttttttfffLfttffffffLLffffttt1tttttt11tffffffffffttttttt11111tffffffffftttfffffttt11111tttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttfffffffffttffftttt11111111ii11ttt11tt1111t111111ttffffLLffttfLfft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLLfttttttfti:::,,,,:i1ttfttt11t111tt111tttffffftttftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLLftttttft1,,,,,,,,,,tffffft11111tft11111ttffLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttfLLfLftffttttfffti:iii::1fffffttt111ttt1tttt1ttfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffLfftfftttttfffiiiiii1111i:iffffftt11111111ttttttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttfftfffLLLLLLLLLftffftfLftffffLLLftttttffi:iiiiiii:1ftttfftt1111ttt1ttt1ttttt111tffffffLfLfttt',0ah,0dh
BYTE 'tffLLfffffLLLLLLLfftfLLftftfLfffLLLLttttt1t1iiiiiii1ttffft111111tfft1tt11tt1tt1ttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttft11i1ii111iii111tt111t1111fffttfftt11tfftttfffLLLLLLLffL',0ah,0dh
BYTE 'tttffttfftffLftttttttttttttfLLLffLLftttt1tti1iii1iii1tt11111111111tffttffftttttttttttfLLLLfffffL',0ah,0dh
BYTE 'ttfLfffffffttffffffffffttftttfLfffLftttttfftt1iiii11ttt1ttftt11111tfttffftt111ttttttttfLLftftttt',0ah,0dh
BYTE 'ttffffffffftttfffffffffttffttfftttttttttfft111iiiii1t111t1ttttt1111tt11ffttffttfffffLLfttffffffff',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttfffttt1tft1111iiiii111tfft11ttt111111t11tttfft1tfffffLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt1111tffft11t111111iiiiiii111fffft11111111ttft111ttt11tfffffLfftttfLLLLf',0ah,0dh
BYTE 'tttttttttffttfffttttt1ttfft1t11ttfftttt1iiii1iiii1i1i,i1ttt1111111tttt111tttt111tffffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttt11tfffftttt11tff11i:,,,:11iiiiit....,:i111111ttt111t1ttftt11111ttfftffffftt',0ah,0dh
BYTE 'tfttfffffttttttfffftttffffttfft1ii:,,.....:11:1tt,,,.....,,i11tt111tt1ttfffftttttt11ttttttft',0ah,0dh
BYTE 'ttttfffffftttffftfft11tfffttft1,..........:1iiii1tti,,,..........,it1111ttt1tfffttttffftt1ttfffLf',0ah,0dh
BYTE '1tttffffftt1ttfffft1111tfttft1i,............,:iii1i,..............:111111tt1tfft11tfffffft1ffffLf',0ah,0dh
BYTE 'tftttffttttt11tttt1ttt11t1111t..............,1i,...............,1111111t11ftttttttfftt11tfffLf',0ah,0dh
BYTE 'tfftttttttfftt1111ttttt11111tt:............. ,ii:,...............,i111tt11111tffftttttt1tttttfft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttt11ttft,...............:,.................ittttttt11ttffffftttttfffttttt',0ah,0dh
BYTE 'tfffftttftttttt11ttttttt11ttf1,...............:::,.......,,,.......tttttfftttfffftfttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt1111t1,...............:::........,i:,....t1ttfttt1tfffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttftffft111ttttttt11t111,...............,::::,........:iiiii:...t11tt1111tffffLffttfffffffttf',0ah,0dh
BYTE 'tffft1tttfffft111ttttttt11ttt1,..... ..........::::,.......,iiii,...it11111tt1tfffLfLfttfffftffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttttt11tt1:...  .,..........,:::.........:i,...,1t1t11tft11tfffffftttffttffttt',0ah,0dh
BYTE 'ttttt1tttttttt111ttttttt1tt1:,...:ii:.........,::,.........,::.....,it1111tt11ttttttt11tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttttt1t::,iiii,.........,:,,...........,,,......,11111111ttttttt11tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttttfft1ti:,,:,.........,:,,.......... ..........:tttt1111ttttttt111tttttfttt',0ah,0dh
BYTE '11ttt1tttttttt11ttttttttttt1,.,:::::.........,:,,...............,....ttttt1111ttttttt111ttttttt1t',0ah,0dh
BYTE '11tt11tttt1tt111111111111ttti:,,,:::..........,:,,............ ......ttttt11111111111111111111t111',0ah,0dh
BYTE '1111111111111111111111tttttttt1:,,,............,:,.............,.  .,11tttttt1111111111111111111111',0ah,0dh
BYTE '1111111111111111111111tttttttttt1:.............,,............ .11ii1ttttttt1111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111tttttt111,.............,::,,...........ittttttttttttt11111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111111..............,:,..........:11tttttttttttttt11111111111111t11111',0ah,0dh
BYTE '11111111111111111111111111111111..............,:,...........:11tttttttttttttttt1111111ttttt11111',0ah,0dh
BYTE '11111111111111111111111111111111:..............,:...........:1ttttttttttttttttttttttt1ttttt11111',0ah,0dh
BYTE '11111111111111111111111111111111:..............,i::,..........,1tttttttttttttttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr10 BYTE ' ',0ah,0dh
 BYTE'  ttftffftttttttfffffttfffttftttttttttt111tttt1111111ttttt11111tttt111111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttftffLLftffffffffttttttt111111111ttfffffttttt111111111111111ttffttftttttttt11111tttt',0ah,0dh
BYTE 'tfttttttttttttttffffLffttfffffffLLLft11tttttt111tfffffffttttttttt11111ttttfffffftfLLfttttttt1111ttt1',0ah,0dh
BYTE 'ttttttttttttttttfffLfttffffffLLffffttt1ttttttt1ttfffffffffttttttt1111ttfftffffLftttfffffttt11111tttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttffffffffftttfttttt111ttt1ttffffffttttt1111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttfLLLfftttttffLftttttttt11ii11fffft1ttfftt11t111tt111ttfffLLftttftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLLfttttt1i::,,::i1tttffffftt11111tft11111ttfLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffttttffLffftffttttfti:,,,,,,,,,:tfffffttttt111tftttttt1ttffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffLfftffttttttti:::::,,1ffttffttt11111111ttttttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttfftfffLLLLLLLLLfftfftffftffffLLLftttttiiiiii11111:1ttfffffftt1111ttt1ttt1tftttt11tfffffLLfLfttt',0ah,0dh
BYTE 'ttfLLffffLLLLLLLLfftfLLftttfffffLLLLtttttiiiiiii1:i11tfffft111111ffft1tt11tt1tt1ttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttft1iiiiiiitt11ttt111t1111tffttfftt11tfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttffttfftffLftttttttttttttfLLLffLLftttt11tiiiii1iii1ttt1ttt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttftttfLfffLfttttt11iiii1iii1tttt1tfftt11111tfttffftt11tttttttttfLLffftttt',0ah,0dh
BYTE 'ttffffffffftttfffffffffttfftttfftffttttfft11iiiii11tt111ttttttt1111tt1tffttffttfffffLLfttftfLffff',0ah,0dh
BYTE 'ttffffffffttttffffffffttttttttttfffttt1tft11iiii11i11111tfft11ttt11111tt11tttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE 'ttfffffffffttfffffffftt1ttt111tfffftttt11111iiiiii111ttfffft11111111tttt11tttt11tffffLLfftttfLLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfftt111tfffttt111111iiii11i1ttffft11111111tttt111tttt11ttfffffLftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttt11tfffftttt11tffttt1t1ii1iiiii1,::i11tt1tt1111ttt11tt1tfftt11111ttfftfLffftt',0ah,0dh
BYTE 'tfttfffffttttttfffft1tffffttfft11tft11i::,,1ii:iiit:,,...,,:i11111tt111tt1ttfffftttttt11tttttfft',0ah,0dh
BYTE 'ttttfffffftttffftfft11tfffttfttttt1i:,....,it1ii1t,,,,.......,111t111ttt1tfffttttffftt11tffLLf',0ah,0dh
BYTE '1tttffffftt1ttfffft111ttfttft11i:,........i1tt1ii1tt1:,,...........:1111111tt1tfftt1tfffffft1ffffLf',0ah,0dh
BYTE 'tftttffttttt11tttt1ttt11t1111t,...........,11:..............,1t111111t1tftttttttfftt11tfffLf',0ah,0dh
BYTE 'tfftttttttfftt1111ttttt11111tt:..............:ii:,................it111tt11111tffftttttt1tttttfft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttt11ttf1,..............,::,................it1tttttt1ttfffffftttttfffttttt',0ah,0dh
BYTE 'tfffttttffttttt11ttttttt11ttfi................:::,,::,...........tttttttftttffffffttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt1111ti................::::,.:iii,.........:111ttfftt1tfffffffttfffffffttf',0ah,0dh
BYTE 'tfffttttftffff111ttttttt11t11................,:::,.iiiii:.........:tt11ttt111tfffLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttfffft111ttttttt1tttt................,::::,.:ii,.........ttt1111tt1tfffLLLfttfffftffttf',0ah,0dh
BYTE 'tttttttttttttt111tttt1tt11ttti.................:::,...,i,.........itttt11ttt11ffffffftttfftfffttt',0ah,0dh
BYTE 'tttttttttttttt111ttttttt11tt1.................:::,....,::,.........,1tt1111tt11ttttttt11tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttttt1t11:.................:::,.... ..............:1111111t11ttttttt11tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttttfft11ti,................,::,.........,......... :ttttt1111ttttttt111tttttfttt',0ah,0dh
BYTE '11tt11tttttttt11tttttttt1tt1iiii:..............::,,...................:1tttt111111tttttt111ttttttt1t',0ah,0dh
BYTE '11t1111tttttt1111111111t111iiiiii:.............,:,,,.................:1ttttt11111111111111111111t111',0ah,0dh
BYTE '11111111111111111111111t11iiiii.............,:,,,...........   .,ttttttttt1111111111111111111111',0ah,0dh
BYTE '1111111111111111111111tt1t1iii,.............,,........... :ii1tttttttt1111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111ttti:,,...............,,,.......... :ttttttttttttttt1t111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111::...............:::,........,i11ttttttttttttttt1111111111111tt11111',0ah,0dh
BYTE '111111111111111111111111111111t...............:ii:,........t1tttttttttttttttt1t1111111ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111:...............:i:::........:tttttttttttttttttttt1ttttt1ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111:............. ,ii:,..,,...:ttttttttttttttttttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr11 BYTE ' ',0ah,0dh
 BYTE'  ttfttfftttttttffffftfffftfftttttttttt111tttt1111111tttt111111tttt111111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfttttttttttttttttffLLttffffffftttttt1t111111111tfffffftttt1111111111111111ttffttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLffttfffffffLLLftt1tttttt111tfffffffftttttttt11111tttttffffftfLLfttttttt111ttttt',0ah,0dh
BYTE 'ttttttttttttttttfffffttffffffLLffffttttttttttt1tffffffffffttttttt11111tfffffffLftttfffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttfffffffffttffttttt1111tt1ttffffffttttt1111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttfffttttffffftttffftt11t111tt111ttfffLLftttftt1tt111tttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLftttttt11ii1tftttffffffftt1111tftt1111tffLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffttttffLLfftffttttti:::,,,,::i1tffffffffttt111tft1tttt1ttffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffLfftfftttt11,,,,,,,:,,,tffffffffttt1111t11ttttttttttt1ttffffffLfffttt',0ah,0dh
BYTE 'tttfftfffLLLLLLLLLftffftfLftffffLLLftttt1iiiiii:,:1tttfffffftt1111ttt1ttt1tfttt111tfffffLLfLfttt',0ah,0dh
BYTE 'ttfLfffffLLLLLLLLfftfLLftttfLfffLLLLttt1i1iiiii1111i::1111ttffft111111ffft1tt11tt1tt1ttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttt11iiiiiii:ttt111tt111tt111tffttfftt11tfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttffttffttfLftttttttttttttfLLLffLLftttt1iiiiiiiittfft11tt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttfttfLLfffLfttt111i111111iitfttt1tfftt11111tfttfffttt1tttttttttfLLftfttft',0ah,0dh
BYTE 'ttffffffffftttfffffffffttffttffftfftttttt1iiiiii1i1tft11tttttttt1111tt1tffttffttfffffLLfttftffffff',0ah,0dh
BYTE 'ttffffffffftttffffffffttttttttttfffttt1tttii111iitt111tfft11ttt111111t1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt111tfffftttt111iiiiiii11111tfffft11111111tfft11tttt11tffffLLfftttfLLLLL',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfft1111tffftttt1111ii111ttttffftt1111111tttt111tttt11ttfffffLftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttt1ttfffftttt11tfft111tt1iii1i1i11tffftt11t1111ttt11tt1tfftt11111ttfftfLffftt',0ah,0dh
BYTE 'tfttffffftt11ttfffftttffffttfft11tft11iiii:iii1,.,,,:iii1ttt111tt111tt1ttfffftttttt11ttttfftt',0ah,0dh
BYTE 'ttttfffffftttffftfft11tfffttftttttt1:,..:11i11:,,,.....,,:i1111tt111ttt1tffftttttfftt1ttffLLf',0ah,0dh
BYTE 'tt1tffffftt1ttfffft1111tfttft1111i:,.....,i11iiiii1tt:.,..........:111111t11tt1tffft1tfffffft1fLffLf',0ah,0dh
BYTE 'tftttffttttt11tttt1ttt11t11111:,.........i11i1111t..............t11111111t1tfttttttfffftt1tfffLf',0ah,0dh
BYTE 'tfftttttttfftt1111ttfft111111:.............,::ii:...............:111111ttt111ttffftttfft1tttttfft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttt11tt1,..............::,...............,1111tttttt11tffLffftttttfftttttt',0ah,0dh
BYTE 'tfffftttffttttt11ttttttt11tfi,..............,::::,,...............i111ttttfftttffffffttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt111ti................::::::,:::,..........it111ttffttttfffLfLfttfffffffttf',0ah,0dh
BYTE 'tfffttttftffff111ttttttt1tt1................,::::.:iiiii,.........11111ttt11ttfffLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttfffft111ttttttt11tti,................::::,.:iiii:.........tttt1111ttttfffLLLfttfffftffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttttt1ttf1.................,:::,.,:iii:.. ......:ttttt11tft11tfffffftttfftfffttt',0ah,0dh
BYTE 'tttttttttttttt111ttttttt1ttt::...............,:::,. .:ii:..........ttt1111tt11tttttft11tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttttt1t111i,..............:::,....,::,...........1111111t11ttttttt11tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttttfftt1iiiiii:.............:::,....  ............. :ttttt1111ttttttt111ttttffttt',0ah,0dh
BYTE 't1ttt1tttttttt111ttttttttt1iiiii,............,:,,,................. ,1tttt111111tttttt111ttttttt1t',0ah,0dh
BYTE '11t1111tt1ttt11111111111111iiii1i,............,::,,.................:1tttt11111111111111111111tt111',0ah,0dh
BYTE '11111111111111111111111111t1,.............,:,,,..........     .:1tttttt111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111t11,.................,:,,..........,:::1ttttttt1111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111:..,..............,,............:ttttttttttttttttt111111111111111111111',0ah,0dh
BYTE '111111111111111111111111111111ii..............,::,...........i111ttttttttttt11111t11111111111111111',0ah,0dh
BYTE '111111111111111111111111111111t...............,ii::,.......:1ttttttttttttt11t1tt1111111ttttt11111',0ah,0dh
BYTE '111111111111111111111111111111i,...............:ii:,......,1ttttttttttttttttttt111111tttttt11111',0ah,0dh
BYTE '11111111111111111111111111111ti,...............:ii:,..:..,1ttttttttttttttttttttttttttttttt11111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr12 BYTE ' ',0ah,0dh
 BYTE'  ttfttfffttttttffffttfffftfftttttttttt111tttt1111111tttt111111tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfttttttttttttttttffLLttffffffffftttttt111111111tfffffftttt1111111111111111ttftttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLffttfffffffLLLftt1tttttt111tfffffffftttttttt11111tttttffffftfLLfttttttt1111ttt1',0ah,0dh
BYTE 'ttttttttttttttttfffffttffffffLLffffttttttttttt1tffffffffffttttttt1111ttfffffffLftttfffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttfffffffffttffftttt1111tt1ttffffffttttt1111t111111ttffffLLLfttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttfffft1ttfffftttffftt11t111tt111ttfffLLftttftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffftfLftttttfttttttttttftttffffffftt1111tftt1111tffLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffttttffLffftffttttt1ii::::111tttffffffffttt111tft1tttt1ttffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffLfftffttttt1:,,,,,,,,:ittffffffffttt1111t11ttttttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttffttffLLLLLLLLLftffftfLftffffLLLftttti::,::::::,,,ttttfffffftt1111tft1ttt1tffttt11tfffffLLfLfttt',0ah,0dh
BYTE 'ttfLffffffLLLLLLLfftfLLftttfLfffLLLfftt11iiiii111i,,t111tfffft111111ffft1tt11ttttt1ttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttt1iiiii1111i:,iftt111ttt11tt111tffttfftt11tfftttffLLLLLLLLffL',0ah,0dh
BYTE 'ttttftttttffLftttttttttttttfLLLffLLfttttiiiiiii::1ttttt11tt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttfLfffffffttffffffffffttfttfLLfffLfttt1ii1iiiii:tftttt1tfftt11111tfttfffttt1tttttttttfLLftftttt',0ah,0dh
BYTE 'ttffffffffftttffffffffftfffttffftfftttttiiii111i1iitft11tttttttt1111tt11ffttffttfffffLLfttftfffffL',0ah,0dh
BYTE 'ttffffffffftttffffffffttttttttttffftttttiii1111ii1t111tfft11ttt111111t11tttfft1tfffffLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt111tfffftttt1iiiiiii11111ttfffft11111111tfftt1tttt11tfffffLfftttfLLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfft1111ttffttt111iiiitt11ttttfffft1111111tttt111tttt11tttfffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttt11tfffftttt11tfft1t1t1iiiit111ttttffftt11t1111ttt111t1tfftt11111ttfftfLffftt',0ah,0dh
BYTE 'tfttffffftt11ttfffftttffffttfft1ttft11ii1i:i1i11tttft111tt1111tt111tt1tffffftttttt11ttttfftt',0ah,0dh
BYTE 'ttttfffffftttffftfft11tfffttftttt1i:,,:1ii1.,,,i11111111111tt111ttt1tffftttttfftt1ttffLLf',0ah,0dh
BYTE '1tttffffftt1ttfffft111tffttft1ii:,.....,11iiiiiii1t:,,,.....,:i111111111t11tt1tffft1tfffffft1fLffLf',0ah,0dh
BYTE 'tftttffttttt11tttt1ttt11t11i:,........,i1tt1ii11tt:,,,,........:t11111111111t1tfftttttfffftt1tfffLf',0ah,0dh
BYTE 'tfftttttttfftt1111ttfftt11i,............::iiiii1,,............it1111111ttt111ttffftttfft1tttttfft',0ah,0dh
BYTE 'ttttttttttttttt11ttttttt11...............::...............:111111tttttttttffLffftttttfftttttt',0ah,0dh
BYTE 'tfffftttffttttt11ttttttt11:...............,:,..............,111111ttttfftttffffffttttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt11,...............,::,...............,1111111ttffttttfffLfLfttfffffffttf',0ah,0dh
BYTE 'tfffttttftffff111ttttttt11:......  ........::,...............,11111111ttt1tttfffLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttfffft111ttttttt11:.......::....,::::.......,::,....,1tt11tt1111tt1tfffLLLfttfffftffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttttt11:.....::.....::::,.......,:iii,.,1t1t11tt11tft1tffffffftttfftfffttt',0ah,0dh
BYTE 'tttttttttttttt111ttttttt1i,.....:::.....,::::,........iii..t1111t1111tt11tttttftt1tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttt1i,.....:::,......::::,.......,ii:..,1t11111111t11ttttttt11tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttttttti....,,,,:,.......,:::,,.......,,....,it11tttt1111ttttttt111ttttffttt',0ah,0dh
BYTE '11tt11tttttttt111ttttttt1:,,.,,,..,,,.........::::,........,:,..... ,1tttttt11111ttttt1111ttttttt1t',0ah,0dh
BYTE '1111111tttttt11111111111i,,..,,,.... .........::::,..................itttt111111111111111111111tt111',0ah,0dh
BYTE '1111111111111111111111111,...,,...............,::,,,...........,,...tttttt1111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111,..... .............,::,,,.........   . .:1tttttt1111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111ti,,,.,,..............::,,..........,,,::i1tttttttttt1111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111i11..............:,............,1tttttttttttttt11111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111111111i...............::::::,.......tttttttttttttt11t1ttt111111ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111:...............:iiii::,......ittttttttttttttttttttt1111tttttt11111',0ah,0dh
BYTE '1111111111111111111111111111111,...............:iiiii:,......,1tttttttttttttttttttttttttttttt11111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr13 BYTE ' ',0ah,0dh
 BYTE'  tttttfftttttttffffftfffftfftttttttttt111tttt1111111tttt111111tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfttttttttttttttttffLLftfffffffffttt1tt111111111tfffffftttt1111111111111111ttftttftttttttt11111tttt',0ah,0dh
BYTE 'ttttttttttttttttfffffftttfffffffLLLftt1tttttt111tfffffffftttttttt11111tttttffffftfLLfttttttt1111ttt1',0ah,0dh
BYTE 'ttttttttttttttttfffffttffffffLLffffttttttttttt1tffffffffffttttttt11111tfffffffLfttffffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttfffffffffttfftttttt11ttt1ttfffffftttttt11tt111111ttffffLLLfttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttfffft1tffffftttffftt11t111tt111ttfffLLffttfft1tt111tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftfLfttttttffffffttttftttffffffftt1111tftt1111tffLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLftffttttfLLffftfftttttftttttttffttttffffffffftt111tftttttttttfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffffftffttttttiii::::i1ttttffffffffftt1111t11ttttttttttttttffffffffffttt',0ah,0dh
BYTE 'tttffttffLLLLLLLLLftffftfLfttfffLLLfttt11:,,,,,,,:::itttttfffffft11111tft1ttt1tffttt11tfffffLLfLfttt',0ah,0dh
BYTE 'tffLffffffLLLLLLLfftfLLftttfLfffLLLLfttt1i::::,,::,,,itt11tfffft111111ffft1tt11tt1tt1ttffLLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttttiiiiii1i:,,:ttt111ttt11tt111tffttfftt1ttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'ttttftttttffLftttttttttttttfLLLffLLfttttiiiii111i:,iftftt11ttt11111tffftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttfttfLLfffLfttt1iiiiii::1ffttt1tffft11111ffttfffttt11ttttttttfLfftftttt',0ah,0dh
BYTE 'ttffffffffftttffffffffftfffttffftfftttt1i1iiii:itft11tttttfttt111tt1tffttffttfffffLLftfftfffffL',0ah,0dh
BYTE 'ttffffffffftttffffffffttttttttttffftttt1iiii111iii1t111tfft1tttt111111t1ttttfftttfffffLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt111ttfffttttiiiiiiiiii1111ttfffft11111111tffttttttt11tfffffLfftttfLLLLL',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfft1111ttfftttt1iiiiitt11tffffffft1111111tttt111tftt11tttfffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttt11tfffftttt11tfftttt1iiiit1111tftfffft11t1111ttt111t1tfftt11111ttfftfLffftt',0ah,0dh
BYTE 'tfttfffffttt1ttfffftttffftttfft11tft111iiii111111tttft111tt1111ttt11tt1tffffftttttt11ttttffft',0ah,0dh
BYTE 'ttttfffffftttffftfft11tfffttfttt11i:iiiiiii111tt111t11111tt1111tt111tft1tffffttfffftt11tffLLf',0ah,0dh
BYTE '1tttffffft11ttfffft1111tfttftii:,....1iii111,,:i1tt11tt11111111111t11tt1tffft1tfffffft1fLffLf',0ah,0dh
BYTE 'tftttffttttt11ttt11ttt1111i:,.......,i1tiiii11i,,,..,:i1t1t111t1111111111t1tfftttttfffftt1tfffLf',0ah,0dh
BYTE 'tfftttttttffttt111ttttt1i:...........,ii111iii11i:.,,......,:1t111111111tttt111ttfLftttfftttttttfft',0ah,0dh
BYTE 'ttttttttttttttt11tttt11t..............,::i1ti:,............,1t1111111tttffttttffLfffttttffffttttt',0ah,0dh
BYTE 'tfffttttfftfttt11tttttt1,...............:::..............tt111111tttffftttffffffftttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11tttttt1................,:..............:t11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tfffttttfttftt111tttttti............... .::,..............:1111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1ttttttft111tttttt............. .::::..............:111tt11tt111ttt1tfffLLLfttfffftffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttt1,..............:ii::::..............:1ttt1111tt11tff1tffffffftttfftfffttt',0ah,0dh
BYTE 'ttttttttttt1tt111ttttt..............:i:::::..............1111111111111tt11tttttftt1tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttt:..............::::::::..............t1111111111111t11ttttttt11tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttt1,........... .,,:,...,:::::..............,11ii111tttt1111ttttttt111ttttffttt',0ah,0dh
BYTE '11tt11ttttttt1111tttt............,..... ...,::::...............:i:i1ttttt11111tttttt111ttttttt1t',0ah,0dh
BYTE '11111111t1tt111111111,............,.........,::::,..............,:::ii1tt111111111111111111111tt111',0ah,0dh
BYTE '111111111111111111111,............ .........,,,::,..............::::i11tt11111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111:.......  .............,,:,,..............,::::i111t11111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111:....,,,,.............,:::,,..................,1t1111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111iiii11t .............,:,..,........       ..:1tttttt11111111111111111111111',0ah,0dh
BYTE '111111111111111111111111111111t:...............:,,,:,,......,,,,,:1tttttttt1t111tt1111111tttt11111',0ah,0dh
BYTE '111111111111111111111111111111t: .............::ii::,.....,i111ttttttttttttttt11ttt111111tttt11111',0ah,0dh
BYTE '111111111111111111111111111111t:..............:iiii:,.....,i1ttttttttttttttttttttttttttttttt11111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr14 BYTE ' ',0ah,0dh
 BYTE'  tttttfttttttttffffffffffffftttttttttt111tttt1111111ttttttt111tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfttttttttttttttttffLLftfffffffffttt1tt111111t11tfffffftttt1111111111111111ttftttftttttttt111111ttt',0ah,0dh
BYTE 'ttttttttttttttttffffLftttfffffffLLLfttttttttt111tfffffffftttttttt11111tttttffffftffLfttttttt11111ttt',0ah,0dh
BYTE 'ttttttttttttttttfffffttffffffLLffffttt1ttttttt1tffffffffffttttttt11111tfffffffLffttfffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttfffffffffttfftttttt11ttt1ttfffffftttttt11tt111111ttffffLLLfttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfLftttttttfffft1ttfffffttffftt11t111tt111ttfffLLftttftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftfLfttttttffffffttttffttffffffftt1111tftt111ttffLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttfLLffftfftttttfftffffffftttfffffffffftt111tft1tttttttfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffffftfftttttt1iii::i1ttttfffffffffftt1111t11ttttttttttttttffffffffffttt',0ah,0dh
BYTE 'ttttfttfLLLLLLLLLLfftfftfLfttfffLLLfttt11:,::,,,,,:1tttttfffffftt1111tft1ttt1tffttt11tfffffLLLLfttt',0ah,0dh
BYTE 'ttffffffffLLLLLLLfftfLLftttfLLffLLLffttt1:,,,,,,,,,ttt11tfffft111111ffft1tt11ttttt1ttffLLLLLLLLfff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLftttt1iiiiiiii:,,iftt111ttt11tt111tffttfftt11tfftttffLLLLLLLLffL',0ah,0dh
BYTE 'ttttftttttffLftttttttttttttfLLLffLLfttt1iiii1111i:,:1ftfft11ttt111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttffttfLfffLfttt1iiii1i:,tffttt1tffft11111tfttfffttt11ttttttttfLLftfttft',0ah,0dh
BYTE 'ttffffffffftttffffffffftffftttfffffttt11iiiii::1fft11tttttfttt111tt1tffttffttfffffLLffffffffffL',0ah,0dh
BYTE 'ttffffffffftttffffffffttttttttttfffttt1iiiiii11iitt111tfft1tttt111111t1ttttfftttffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt111ttfffttt1iiiiiiiiii1111ttfffft11t11111tffttttttt11ttffffLfftttfLLLLL',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfft1111ttffttt1iiiii1t11tffffffft1111111ttttt1ttfft11ttffffLfftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttt11tfffftttt11tfftt111iiiii1111ttftfffft11t1111tttt1tt1tffttt1111ttfftfLffftt',0ah,0dh
BYTE 'tfttfffffttt1ttftfftttffftttfft11tft1i1iiii111111tttft111tt1111ttt11tf1tffffftttttttttttttfft',0ah,0dh
BYTE '111tfffffftttffftttt11tfftttfttt11i1iiiii1t11t111t11111tt1111tt111tft1fffffttfffftt11tffLLf',0ah,0dh
BYTE '1t1tffffft11ttffttt1111tftttti:,,...:1iiiii1i:i1ttt111tt11111111111t11tt1tffft1tffffffttfLffLf',0ah,0dh
BYTE 'tftttfftt11t11ttt11ttt111i:,,.......:11iiii11i,.,,:11tt11tt11t1111111111t1tffttttffffftt1tfffLf',0ah,0dh
BYTE 'tffttttttttftt1111ttttt1:............:1111iiii1ti,,....,,i1tttt11111111tttt111ttfLffttfftttttttfft',0ah,0dh
BYTE 'ttttttttttttttt111ttt1t...............,:i1tt1,..........,itttt111111tttttttttffLfffttttffffttttf',0ah,0dh
BYTE 'tfffttttfftfttt11ttttt1,................:::::i:,...........,1ttt111111ttttfftttffffffftttttttffttf',0ah,0dh
BYTE 'tffft1ttffffff111ttttti.................,:,...........,1t111111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1ttfttttt111ttttti................,,::,............it1111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttttt.............:iii::::,............it1111111tt111tttttfffLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt1tttttttt111tttti,............,iiii::::::,...........,1ttttt111ttt11tft1tfffffLftttfftfffttt',0ah,0dh
BYTE 'ttttt1tttt11tt111ttt1:.............:iii::::::............,1tttt1111111111tt1tttfttftt1tttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttti..............,:,,:::,,:............:tt11t11111111111t11ttttttt11tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11tttt:............. ,::,.  .::,,,:........... :t1111111t111ttt1111ttttttt111ttttffttt',0ah,0dh
BYTE '11tt11tttttt111111ti.......................,:::::.............it111t11111tttt1111tttttt1111ttttttt1t',0ah,0dh
BYTE '1111111111111111111,.............,.........,:::::.............:1t11ii:11111111111111111111111tt111',0ah,0dh
BYTE '1111111111111111111:........................,,:::..............ii::ii111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111:.......  ..............,,,:,...............,:::::i1111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111:......,,..............,,,:,...............:::::i11t1111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111iiiiii1...............,,,,.,..............,::::11111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111................,,:,,,......           .it1111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111111t...............i::,.....,,.....,,,i1ttttttttt11tt111111ttttt11111',0ah,0dh
BYTE '1111111111111111111111111111t...............:ii::,....:i111111tttttttttttttttttttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr15 BYTE ' ',0ah,0dh
 BYTE'  tttttfttttttttffffftfffftfftttttttttt111tttt1111111ttttttt111tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfttttttttttttttttffLLftfffffffftttt1t1111111t11tfffffftttt1111111111111111ttftttftttttttt111111ttt',0ah,0dh
BYTE 'ttttttttttttttttffffLftttfffffffLLfftt1tttttt111tfffffffftttttttt11111tttttffffftffLfttttttt11111ttt',0ah,0dh
BYTE 'ttttttttttttttttfffffttffffffLLLfffttt1ttttttt1tffffffffffttttttt11111tfffffffLffttfffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttffffffffftttftttttt11ttt1ttfffffftttttt11tt111111ttffffLLLfttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttfffttttt1tfffft1ttfffffttfffft11t111tt111ttfffLLftttftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftfLftttttttfffffftttffttffffffftt1111tftt111ttffLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttfLLffftffttttt111iiitfftttfffffffffftt111tft1tttttttfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffffftfftttt1:,::,,,:ittttffffffffftt1111t11ttttttttttttttffffffffffttt',0ah,0dh
BYTE 'tttffftfLLLLLLLLLLfttfftfffttfffLLLftt1i:,,,,,,,,,,:1tttttfffffftt1111tft1ttt1tffttt11tffffLLLLLfttt',0ah,0dh
BYTE 'ttffffffffLLLLLLLfftfLLftttfLLffLLLftt1ii:,:tftt11tfffft11111tffft1tt11ttttt1ttfffLLLLLLLfff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfLLLft1iiiii11111i::tffft11tttt11t111tfffttfftt1ttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttfftttttffLftttttttttttttfLLLffLLftt11iiiiiii:tffffft11tt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttffttLLfffLft11iiiiitffffttt1tffft11111tfttfffttt1tttttttttfLLftffttt',0ah,0dh
BYTE 'ttffffffffftttffffffffftffffttfftfttt11ii1iii1iitffft11tttttfft1111tt1tffttffttfffffLLfffftfLffLL',0ah,0dh
BYTE 'ttffffffffftttffffffffttttttttttffftt11iiii111ii1tt111tfft1ttft111111t1ttttfftttffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt111ttfffttttiiiiiii11111ttfffft11t11111tfftttttttt1tfffffLLftttfLLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfft1111ttffttt1iiiiiitt11tffffffft1111111ttttt1ttfft11ttffffLfftfLLLLLf',0ah,0dh
BYTE 'tftttttttttttt1tttt11tfffft1tt11tfft111iiiit111ttfffffft11t1111tttt1tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'tfttffffftt11ttftfftttffftttfft11tti1:iii::i111111ttfft111tt1111ttt11tf1tffffftttttttttttttfft',0ah,0dh
BYTE '111tfffffftttffftttt11tfftttft1i:,..,1iiiii:1t111t11111tt1111tt111tft1fffffttfffftt11tffLLf',0ah,0dh
BYTE '1tttffffft11ttffftt1111tt1ii:,,......,i1iii11...,:i111tt11111111111t11tf1tfffttfffffffttfLffLf',0ah,0dh
BYTE 'tfttttftt11t11ttt11ttt11,,..........,11t1iiii1t1:,,.....,:i111111t1111111111t1tffttttffffttt1tfffLf',0ah,0dh
BYTE 'tffttttttttfttt111ttttti,.............:iii11t1i,,.........,ittt11111111tttt11tttfLffttffttttttffft',0ah,0dh
BYTE 'ttttttttttttttt111tttt1:................:i:,...........:ttt1111111tttffttttffLLffttttffftttttf',0ah,0dh
BYTE 'tfffttttftttttt11ttttti.................,ii:............,1ttt11111ttttffftttffffffttttttttffttf',0ah,0dh
BYTE 'tffft1ttfffftf111ttttti..................:i:,...........,1tt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1ttfttttt111ttttt..................,::,...........,1t1111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttttt...........,,.....,::::............,111111111tt111tttttfffLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt1tttttttt111tttti,........,ii:......::::::............,ittttt111ttt11tft1tfffffLftttfftfffttt',0ah,0dh
BYTE 'ttttt1tttt111t111tttt........::,.....,:::::.............ittttt1111t1111tt1ttfttttttttttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttt1,.......,:::,......::::::.............tt1t1111111ttt1tttfttttttt1tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11tttti.........,::::.......,:::::..........,,:1t11111111ttff1111ttttttt111ttttffttt',0ah,0dh
BYTE '111111tttttt111111t1,..........,:::........,:::::..........,:i1111t111ttttt11111ttttt1111ttttttt1t',0ah,0dh
BYTE '1111111111111111111............,,.........,::::,.........,:i1111111111111111111111111111111tt111',0ah,0dh
BYTE '11111111111111111111:.......................,:::,.. ......,:ii111111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111:.......,..............,:::,..........,::i11t1111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111:,,..,, ..............,,,::,............,1111111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111i11:...............,..,:,,.....    ..:1t11111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111111................,::::,,.....::::i11tttt111111t1111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111111,.................ii::,....:1tttt1ttttttttttttttttt11tt111111ttttt11111',0ah,0dh
BYTE '1111111111111111111111111ti..................i:,.....t1ttttttttttttttttttttt1ttttttttttttt11111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr16 BYTE ' ',0ah,0dh
 BYTE'  ttffftfffttttttttftttfffttftttttttttt111tttt111111tttttttt111tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfftttttttttttttttffLLftfffffffftttt1t111t111t11tfffffftttt111111111111111tttftttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLftttfffffffLLffttttttttt111tfffffffftttttttt11111ttttfffffftfLLfttttttt111tttt1',0ah,0dh
BYTE 'ttttttttttttttftfffffttffffffLLffffttttttttttt1tffffffffffttttttt1111ttfffffffLfttffffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttffffttfffttffffffffftttfttttt1111tt1ttffffffttttt1111tt11111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttffftttt11tttffttttfffffttfffft11t111tt111ttfffLLftttftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftfLftt11iiiii1tttffttffffffftt1111tftt111ttffLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttfLLffftfftt1:,,,,,,,,:iftttfffffffffftt111tft1tttttttfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffffftff1i:,,,,,,,,:ttttfffffffffftt1111t11ttttttttttttttffffffffffttt',0ah,0dh
BYTE 'tttffftfLLLLLLLLLLfttfftfffttfffLLLt,,:iiii:ittttttffffffftt1111tft1ttt1tftttt11tffffLLLLLfttt',0ah,0dh
BYTE 'ttffffffffLLLLLLLfftfLLftttfLLffLLLfi,:iiii1111111ffftt11tfffft11111tffftt1t1tttttt1ttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttLLLLfffffi:iiiiiiitffffft11tttt11t111tfffttffft1ttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttfftttttfffftttttttttttttfLLLffLLtiiiiii1ftffffftt11tt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttffttfLfffLtiiiii1111tfffffttt1tffft11111tfttffftttttttttttttfLLfffffft',0ah,0dh
BYTE 'ttffffffffftttffffffffftffffttfftftt1iiiii11ttffft11tttttfftt111tt1tffttffttfffffLLffffffLffLL',0ah,0dh
BYTE 'ttffffffffftttffffffffttttttttttffftt11ii111111tt111tfft1ttft11111tt1ttttfftttffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffftt1ttt1111tffftttiiiiii11111ttfffft11t11111tfftttttttt1ttfffLLLftttfLLLLf',0ah,0dh
BYTE 'ttttttttfffttfffttttt1ttfft11111tfft11i:iiitt11ttfffffft1111111ttttt1ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tftttttttttttt1tttt11ttffft1tt11ttti::i:iiiii1ttftfffft1tt1111tttt1tt1tffftt1111tffftfLffftt',0ah,0dh
BYTE 'tfttffffftt11ttftfft1tffftttff1i:,...1i:i,..,:i1tft111tt1111ttt11tf1tffffftttttttttttttfft',0ah,0dh
BYTE '111tfffffftttffftttt11tfft11i:,......,11iiiiii,,,....,:i1111t1111tt111tft1fffffttfffftt11tffLLf',0ah,0dh
BYTE '1tttffffft11ttffftt1111t1,..........,i1t11ii11i:.,........,111111111111t11tt1tfffttfffffffttfLffLf',0ah,0dh
BYTE 'tfttttftt11t11ttt11ttt11:..............iiiiiii11,,,......,,,itt11t1111111111t1tffttttffffftt1tfffLf',0ah,0dh
BYTE 'tffttttttttfttt111ttttt................,iii,...........ttt11111111ttt111tttfLffttfft1ttttffft',0ah,0dh
BYTE 'ttttttttttttttt111ttt11:.................:i::............ttt1111111tttftttttffLLffttttffffttttf',0ah,0dh
BYTE 'tfffttttftttttt11ttttt1,.................,:............:ttttt11111tttffftttffffffftttttttffttf',0ah,0dh
BYTE 'tffft1ttfffftf111ttttt1,..................::::............:1tt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttttti...................,::::............,111111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttttt:...................,::::::,:::,.......,1t1t11111tt111tttttfffLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt1tttttttt111tttt1,....................,::::::ii:......ittt11111ttt1ttff1tfffffLftttfftfffttt',0ah,0dh
BYTE 'ttttt1ttttt11t111tttti.....................,:::::,ii,.....itttt1111tt111tttttttttttttttttttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttt........ .............:::::,ii,.....:1t1t1111111tttttttfttttttt1tttttffttt',0ah,0dh
BYTE '1tttt1tttttttt11ttttt:.... :i:.............:::::..,i:.......it11111111ttff1111tfttttt11tttttffttt',0ah,0dh
BYTE '11tt11tttttt1111111t1,...,iiii, ..........::::,.  .,:,......111111111ttttt1111ttttttt111ttttttt1t',0ah,0dh
BYTE '11111111111111111111i..,.,iii...........:::::.......,....itt1111111111111111111111111111111tt111',0ah,0dh
BYTE '11t111111111111111111....::ii...........::::,..........,111111111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111, ...,:,............,,:,.....,,:11tt11111111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111i:,....... ............,,:,.....:1tttttt11111111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111.,. ..............:,,....,it11ttt11111111111t11111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i,..................ii:,.....,1t1ttttt1111111111t1111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111:...................ii:......ttttttttttt11tttt1t111111tt11111111ttt11111',0ah,0dh
BYTE '111111111111111111111111:...................:i:,.....:t1tttttttttttttttttttttt1tttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr17 BYTE ' ',0ah,0dh
 BYTE'  ttffftfffttttttttttttfffttftt111ttttt111tttt111111ttttttttt11tttt111111ttttttttttttttttttttt111111tt',0ah,0dh
BYTE 'ttfftttttttttttttttffLLftfffffffftttt111111111t11tffffffttttt11111111111111tttftttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLftttfffffffLLfft111ttttt111tfffffffftttttttt11111ttttfffffftfLLfttttttt111ttttt',0ah,0dh
BYTE 'ttttttttttttttttfffffttffffffLLLfffttt1ttttttt1tffffffffffttttttt1111ttffffffLffttffffffttt1111tttt1',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffftttftt1t1iii11111tfffffftttttt11tt111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttffft11i:,,,::::1tfffftttfffft11t111tt111ttfffLLfttfftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftfft1:,,,,,,,,,:tttttttffffffftt1111tftt111tttfLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttffLfftt1::,,,,,:::::itfttttffffffffftt111tft1ttfttttfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttfLLLLLLLLLLfttttffftffffttf1,,,,:iii1111itftttfffffffffftt1111t11ttffttttttttttffffffffffttt',0ah,0dh
BYTE 'tttffftfLLLLLLLLLLfttfftfffttffffft:,,,:iii111ii1tttttttffffffftt1111tft1ttt1tftttt11tffffLLLLLfttt',0ah,0dh
BYTE 'ttffffffffLLLLLLLfftfLLftttfLfffLft:,,:iiiiii1tffftt11tfffft111111ffftt1t1tttttttttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttfLLfffft:::iiiiii1tffffft11tttt11tt111fffttffft1ttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttfftttttfffftttttttttttttfLLLfffftiiiiiiitfffffffft1tttt1t1111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttffttfLftfft1iiiiii11ffffftttt1tffft11111tfttffftttttttttttttfLLffffftt',0ah,0dh
BYTE 'ttffffffffftttfffffffftttfftttftttttt1iiiii11ttffft11tttttfftt111tt1tffttffttfffffLLffffffLffLL',0ah,0dh
BYTE 'ttffffffffftttffffffffttttttttttfftt11iii1111ttt111tfft1ttft11111tt1ttttfftttffffLLLfttffLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffft11ttt1111ttff1iiiiiii111ttfffft11t11111tfftttttttt1tffffLLLftttfLLLLf',0ah,0dh
BYTE 'ttttttttfffttffftt1tt1tttft1111tt1,.:iiii::,,:i1tfffft1111111ttttt1ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttttttttttt11ttffft1tti:,...,iiii::.....,:itftt1tt1111tttt1tt1tffftt1111tffftfLffftt',0ah,0dh
BYTE 'tfttffffftt11ttftfft1tttft1i:,.......:11iiii::,,,,,,..t111tt1111ttt11tf1tffffftttttttttttttfft',0ah,0dh
BYTE '111tfffffftttffttttt11tti:,..........,1tt1ii11i,,.,.,,,,,1111t11111tt111tft1tffffttfffftt11tffLLf',0ah,0dh
BYTE '1tttffffft11ttttttt1111...............:11iiii1.,.,,.,..,1t11111111111t11tf1tfffttfffffffttfLffLf',0ah,0dh
BYTE 'tfttttftt11t11ttt111tt1,................,iii1:.........,111t1111111111111t1tffttttffffftt1tfffLf',0ah,0dh
BYTE 'tffttttttttftt11111ttt..................::i:..........itttt11111111ttt111tttfLffttfft1tttttfft',0ah,0dh
BYTE 'tttttttttttttt1111ttt1:..................,:::,..,.......tttt1111111tttffttttffLLffttttffftttttf',0ah,0dh
BYTE 'tfffttttftttttt11tttt....................:::::,,.........:ttttt111111ttttfftttffffffftttttttffttf',0ah,0dh
BYTE 'tffft1ttfftttt111tttt:....................,:::,::,.....:1ttt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1ttfttttt111ttt1,.....................:::,,::iii,.....itt1111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttt......................,::,,::i,.....:111111111tt111tttttfffLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt11ttttttt111tt1:......................,:,..:,:i.......:tttt1111ttt1ttffttffffffftttfftfffttt',0ah,0dh
BYTE 'ttttt1ttttt111111tt1:......................,:,..:. .::......,itttt1111tt111ttttttfttffft1tftttffttt',0ah,0dh
BYTE 'ttttt1tttttttt111tt1:...........  .........,,,.,:...........,1tt11tt111111ttt1ttttffftttt1tftttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttti,......... .,..........,,,.,:..........,it11111111111ttft1111ttttttt11tttttffttt',0ah,0dh
BYTE '11tt11ttttt111111tt:..........,::,........,,,.,:......,:i11t11111111111ttttt1111ttttttt111ttttttt1t',0ah,0dh
BYTE '11111111111111111111:........:ii.........,,.,,.....i1ttt11t11t111111111111111111111111111111tt111',0ah,0dh
BYTE '1111111111111111111ti........,:i,...........,,.....t11111111111111111111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111ti,......,:. ......,:,.,:.....,1t1t11111111111111111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111........,,,........:::,,......t1tttt11111111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111i.........   ........:::,......,1ttttt11111111111t11111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111:........ ...........:::.......it1ttttt1111111111t1111111111111111111111111',0ah,0dh
BYTE '111111111111111111111i,........,......... ,ii::,......:ttttttttttt11ttt1tt11t111tt111111t1tttt1111',0ah,0dh
BYTE '11111111111111111111t.........,..........:iiii::,.....,1ttttttttttttttt1ttt1ttt1tttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr18 BYTE ' ',0ah,0dh
 BYTE'  ttttftfffttttttttttttfffttttt111ttttt111tttt111111ttttttttt11tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfftttttttttttttttffLLftffftfffftttt111111111t11tffffffttttt11111111111111tttftttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttfffffftttfffffffLLLft111tttttt11tfffffffftttttttt11111ttttfffffftfLLfttttttt111ttttt',0ah,0dh
BYTE 'ttttttttttttttttfffffttfffffffffffft11111:::i1tffffffffttttttt1111ttffffffLffttffffffttt1111tttt1',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffftttft1::,,,,,,,,ifffffftttttt11tt111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLfttttffLLLfftttttff1:,,,,,,,,,,:itfffftttfffft11t111tt111ttfffLLfttfftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffttt1:,,,,:::i1tttftttffffffftt1111tftt111tttfLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttffLfftt,,,,,:ii11t11tfttttffffffffftt111tft1ttfttttfLLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttfLLLLLLLLLLfttttffffffffttt,,,,:iii1111ttttfffffffffftt1111t11ttffttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttffftfLLLLLLLLLLfttfftfffttttfft:,,,,:iiiiii1tttttttffffffftt1111tft1ttt1tftttt11tffffLLLLLfttt',0ah,0dh
BYTE 'ttffffffffLLLLLLLfftfffftttfLftfLfiiii1iii1tffftt11tfffft111111ffftt1t1tttttttttfffLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLLffttttfffffttfLLftfffiiiiiii1fffffft11tttt11tt111fffttffft1ttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttfftttttffffttttttttttttttffftffftiiii1tttfffffft1tttt1t1111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttftttffftfft1iii1ttfffffttt1tffft11111tfttfLftttttttttttttfLLftffftt',0ah,0dh
BYTE 'ttffffffffftttfffffffftttfftttftttt1iii111tffftt11tttttfftt111tt1tffttffttfffffLLffffffLffLL',0ah,0dh
BYTE 'ttffffffffttttfffffffft1tt1111ttt1::ii1ii111ttt11tfft1ttft11111tt1ttttfftttffffLLLfttffLLLLL',0ah,0dh
BYTE 'tttffffffffttffffffftt111tt111i:,..iiiii11,::1tfffft11t11111tfftttttttt1tfffffLfftttfLLLLf',0ah,0dh
BYTE 'ttttttttfffttffttttt111ttt1:,......,iiiii11:,...,:1fffft1111111ttftt1ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tftttttttttttt11tt111tt1:,..........11iii1t1:,,,,,.:tfttt1tt1111tttt1tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'tfttffffftt11tttttt111:..............:1tt1ii11i:::,,,,,,,if1111tt1111ttt11tf1tfffffttttttttttttffft',0ah,0dh
BYTE '111tfffffft1tfftttt11................:iii:,,,.,,.,..it1111111111tt111tft1tffffttfffftt1ttffLLf',0ah,0dh
BYTE '1tttffffft111tttttt1i,............,....::,1i,..,,,..ttt11111111111t11tt1tfffttfffffffttfLfLLL',0ah,0dh
BYTE 'tfttttftt1t111ttt111..................,:,:1i,.......it111t11t1111111111t1tffttttffffftt1tffLLf',0ah,0dh
BYTE 'tffttttttttft1111111,...................:::,,,.......it1tttt11111111ttt111tttfLffttfft1tttttfft',0ah,0dh
BYTE 'tttttttttttttt1111t....................,:::,.:,..,.....:tttttt1111111tttffttttffLLffttttffffttttf',0ah,0dh
BYTE 'tfffttttfttttt111t1,.....................:::..:,........,1tttttt111111ttttfftttffffffftttttttffttf',0ah,0dh
BYTE 'tffft1ttfftttt111ti......................::::,..:,.....,:::i1ttt111111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'ttfft1tttttttt111t:......................,:::,..:,....,:iiiitt11111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt1111.......................,:,...:,....:iiii1111111111tt111tftttfffLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt11ttttttt111t...................,,,,,,,...,......,ii1111ttt1111ttt1tfffttffffffftttfftfffttt',0ah,0dh
BYTE 'ttttt11tt11111111i,.................,::::::,....:........,,:i1111tt1111tt111ttttttfffffft1tftttffttt',0ah,0dh
BYTE 'ttttt11ttttttt11t.................,:,....:....  .. .,1t11ttt1111111ttt1ttttffffttt1tftttffttt',0ah,0dh
BYTE 'ttttt11ttttttt1111:................,::::i:.....:.,..,,,:i11tttt111111111tft1111ttttttt11tttttffttt',0ah,0dh
BYTE '111tt11ttt1111111t1:.   ............:::::.....,:....it11111tt1tt1111111ttttt1111ttttttt111ttttttt1t',0ah,0dh
BYTE '11111111111111111111i:,..............,,,,......,:....:1tt111111t1111111111111111111111111111111tt111',0ah,0dh
BYTE '11111111111111111111t11:........,.... .  ..,....:.....it1t111t11111111111111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111:,..................:....:.....:1ttt11t11t11111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111i,...................:....:......it1ttttt1tt11111111111t1111111111111111111111',0ah,0dh
BYTE '1111111111111111111111....................,,..,:,.....:tttttttt111111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111:.................. .::..,:......,1t1ttttt11t1t11111t1111111111111111111111111',0ah,0dh
BYTE '11111111111111111111ti,.................. ,::,,:.......itttttttttttt111t1tt11t111tt111tttt1tttt1111',0ah,0dh
BYTE '11111111111111111111t....................,:,:.......:tttttttttttttttt1ttt1ttt1tttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr19 BYTE ' ',0ah,0dh
 BYTE'  tttttttttttttttttttttffftttt1111111tt1111tt1111111ttttttttt11tttt1111111ttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfttttttttttttttttffLfttffttfffttttt1111111111111tffffftttt111111111111111tttffttftttttttt11111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLftttfffffffffftt11111iii1i11ffffffffttttttt111111tttttffffftfLLfttttttt111ttttt',0ah,0dh
BYTE 'ttttttttttttttttffffftttffffffffffttt11::,,,,,:1ffffffffttttttt1111ttfffffffLfttffffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffttttt1:,,,,,,,,,,:tffffftttttt111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttffLLfttttttft,,,,,,,,:::,:itfffftttfffft11t111tt111ttfffLLfttfftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLLfttfffttt,,,,,,:ii1111tttttttffffffftt1111tftt111tttfLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLffttfttttffffft1:,,,,,:iii11111fttttffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttfLLLLLLLLLffttttffftfffftt1:,,,,,:iiiii1ftttfffffffffftt1111t11ttffttttttt1ttffffffffffttt',0ah,0dh
BYTE 'tttffttfLLLLLLLLLLfttfttffftttttft::::iiiiiii1ttttttttfffffftt1111tft1ttt1tffttt11tffffLLLLLfttt',0ah,0dh
BYTE 'ttffffffffLLLLLLffftfffttttffftfLfi:iiiiiii1tffftt11tfffft111111ffftt1tt1tt1tttttfffLLLLLLffff',0ah,0dh
BYTE 'tffftfttttfLLLfftttttffffttfLLftfff:iiiii1tffffftt1tttt11tt111fffttffft1ttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttfffttttttttttttttffffffftiiii1ttffffffft1ttt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttft1tfffttt1iiii1ttfffftttt1tffft11111tfttffftttttttttttttfLLfffffft',0ah,0dh
BYTE 'ttffffffffftttfffffffftttffttttti::iiii1111tttttt11tttttfftt111tt1tffttffttfffffLLffffffLLfLL',0ah,0dh
BYTE 'ttffffffffttttfffffffft1ttt11i:,.,iiiiiii11:i1111tt111tfft1ttft11111tt1ttttffttttfffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttffffffftt111i:,......:11iiiii1::::i1ttffft11t11111tfftttttttt1ttffffLfftttLLLLLf',0ah,0dh
BYTE 'ttttttttfffttfttt1111ii:,.........,it1iii1ti::,..,:1tfffft1111111ttttt11tfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttt1tt111111,..............1111ii1ti::,,,,.:tffftt11t1111tttt1tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'tfttfffftt1111ttttti,................:i,,::,,,,,,itt1111tt1111ttt11tf1tffffftttttt1tttttffft',0ah,0dh
BYTE '111tfffffft1ttttttt:..........,,......:,.,i,,,,,,.t111111111111t111tft1tffffttfffftt1ttffLLf',0ah,0dh
BYTE '111ttfffft111ttttt1,............,.....,:,.:1i,......11t111111111111t11tt1tfffttfffffffttfLfLLL',0ah,0dh
BYTE 'tttt1tftt11111tt11....................::,.:1i,......:tt11111111111111111t1tffttttffffftt1tffLLf',0ah,0dh
BYTE 'ttft11ttttttt1111i,....................,:::.,,:,......:111tttt11111111tttt11tttfLffttfft1tttttfft',0ah,0dh
BYTE 'tttttt1ttttttt111......................,::..,:,.......:11tttttt111111tttffttttffLLffttttffffttttf',0ah,0dh
BYTE 'tffft11ttttttt11i,.......................:::,..,:,.......,1tttttttt11111ttttfftttffffffftttftttffttf',0ah,0dh
BYTE 'tffft11ttttttt11........................,:::,..:,........11tttt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tttft11ttttttt11......................,:,:,........,111tt1111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tfttt11ttttttt11i.....................::::.:,....... ,1t11111111111t111tftttfffLLLfttfffftffttf',0ah,0dh
BYTE 'tttt111ttttttt11:....................,:::.,:,..........,:iii11111ttt11tffttffffffftttfftfffttt',0ah,0dh
BYTE 'ttttt11tt1111111,....................,:::,.,:..........   .::ii11111ttftttftfffft1tftttffttt',0ah,0dh
BYTE 'ttttt11ttttttt11i................. ....,,,,.....:.... ........,:::ii111tt1tttfffffttt1tftttffttt',0ah,0dh
BYTE 'ttttt11ttttttt11ti,.     .........,...   .. ....,..:,..    ....,:::iii1ttt1111ttttttt11tttttffttt',0ah,0dh
BYTE '11111111ttt111111t1ii,.......................:..,.:1:,,..   ..,i1i1t1ttt1111ttttttt111ttttttt1t',0ah,0dh
BYTE '1111111111111111111ttttt:,......................:..  ,tttt111ii1tt1111111111111111111111111tt111',0ah,0dh
BYTE '111111111111111111111111:,..................,...:.....it1t1ttttttttt11111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111,..................,...:.... tttt11t11t11111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111:...................,..,:.....:ttttttttttt1111111111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111i,...................:,.,:.....,1ttttttttt11111111111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111...................,::..:.....,1ttttttttt1t11t1111t1111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111:.................. ::,,:......itttttttttttttt111ttt11t1111t111t1ttttttt1111',0ah,0dh
BYTE '111111111111111111111t1:.................. ::::......ttttttttttttttttt1ttt1ttt11ttttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr20 BYTE ' ',0ah,0dh
 BYTE'  tttftttttttttttttttttffftttt1111111tt1111tt11111111tttt1ttt11tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfftttttttttttttttffLfftfftttffttttt111111111111ttffffftttt1111111111111111ttffttfttttttttt1111tttt',0ah,0dh
BYTE 'tttttttttttttttttffffftttffffffffffft111tt111111ttffffffttttttttt11111tttttffffftfLLftttttt11111ttt1',0ah,0dh
BYTE 'ttttttttttttttttffffftttffffffLffftt111i:::::1tffffffffttttttt11111tfffffffLfftfffffftttt111ttttt',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffttttt1i,,,,,,,,,,fffffftttttt111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttffLLftttttttti:,,,,,,,,,,,,tfffftttfffft11t111tt111tttffLLfttfftt1tt111tttttt',0ah,0dh
BYTE 'ttttttttffLLLLLLLffttfLLffttfffttti,,,,,,:iiitttttttffffffftt1111tftt1tttttfLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttffffft1:,,,,::i111tt1tfttttffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttfLfLLLLLLLLfttttffftfffftti,,,,,,:iiii1i1ftttfffffffffft11111t11ttftttttttttttfffffLLfLfttt',0ah,0dh
BYTE 'tttffttfLLLLLLLLLLfttfttffftttttf1,,::,:iiiiiiii1ttttttttfffffftt1111tft1ttt1ttfttt11tffffLLLLLfttt',0ah,0dh
BYTE 'ttfffftfffLLLLLfffftfffttttffftfLf:iiiii11ii1tfffft11tfffft111111ffft11t1ttt1tt1tffffLLLLLLLfff',0ah,0dh
BYTE 'tffftfttttfLLLfttttttffffttfLLftff1:iiiiiiii1ffffftt11tttt1ttt111fffttfffttttfft1tffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttfffttttttttttttttfffffff1iiiii1tffffffftt1ttt1111111tfftfffftttttttttttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttffffffffftttt1tffftft1iiiii1ttfffffttt1tffft11111tfttfffttt1tttttttttfLLftfffft',0ah,0dh
BYTE 'ttffffffffttttfffffffft1tftt1tft1iiii1111ttftft11tttttfft1111tt1tffttffttfffffLLffffffLffLL',0ah,0dh
BYTE 'ttffffffffttttfffffffft1tttt1ii,.:iiiii111t111ttt111tffttttftt1111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffftfttt111ii:,....,i1iiiii1i:i11111tfffft11t11111tfftttttttt1tfffffLfftttfLLLLf',0ah,0dh
BYTE 'tttttttttffttfttt1111ii:,.........11iiii11::,:1tftfffft1111111tttt11ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tft1ttttttt1t1111111:,.............:1tt1iii1t1::,,.,:1tffftt11t1111ttt11tt1tffftt1111ttfftfLLfftt',0ah,0dh
BYTE 'tttttffttt1111ttttt................:iiiiii11,:::,,,,.:tttt111tt1111ttt11tf1tffffftttttt1ttttttfft',0ah,0dh
BYTE '1tttfffffft1tftttt1,.................,::.,:i:,,,,,,,it11111111111tt111tft1tffffttfffftt11tffLLf',0ah,0dh
BYTE '111ttfffft111ttttti...................::,,:1.......t1tt11111111111t11tf1tfffttfffffffttfLfLLf',0ah,0dh
BYTE 'tttt1tftt11111ttt1:...................,::..1.......:tt111t11t1111111111t1tffttttffffftt11ffLLf',0ah,0dh
BYTE 'ttft1111ttttt1111.....................::,..,:.......,111tttt11111111tttt11tttfLffttfft1tt1tffft',0ah,0dh
BYTE '1tttt11ttttttt111,.....................,::,..,:,.......,1ttttttt111111tttffttttffLLffttttffffttttf',0ah,0dh
BYTE 'tfftt11ttttttt11.......................:::,..,:,........itttttttt1111tttttfftttffffffftttftttffttf',0ah,0dh
BYTE 'ttfft11ttttttt11,.......................,:,,:,........11tttt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tttft11ttttttt1i,.....................,::i,,:.........:111tt1111111111tttttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'ttttt11ttttttt1i.....................,:::ii:.,:,........,1t1111t111111t111ttfttffLLLLfttfffttffttf',0ah,0dh
BYTE 'tttt111ttt11t11.....................,:::,.,:..........1tt111tt11111ttt1tffttffffffftttffftffttt',0ah,0dh
BYTE 'ttttt11t1111111:......................:::::,...,:..........:i1tttt1tt111t1111tttttfttffft1tttttffttt',0ah,0dh
BYTE 'ttttt11tttt11t1i.......................... ....,,.......... .,,:i11iii11111tt1t1ttffffttt1ttttttfttt',0ah,0dh
BYTE 'ttttt11tttttt111...     ......................,:............   .,:::iiii1111111tfttttt11ttttttfttt',0ah,0dh
BYTE '11111111t1111111t1i::::......................,:..,:..   .......,::iii11111tttttt111ttttttt1t',0ah,0dh
BYTE '11111111111111111ttttttt1,.....................,:......:,..    ..,::iiii11111111111111111tt111',0ah,0dh
BYTE '111111111111111111111111i,.................,::..,.... ,tt1ii,,.. ..,:iiii111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i,.................,:,,,......1tttttt11i::itt11t1111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i,................ ,:::,......it1t1tttttttttt11tt11t111111111111111111t1111',0ah,0dh
BYTE '111111111111111111111111................. ,::,......it1tttttttt1111111t11111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111:................. .:::......t1ttttttt1ttttt111t1111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111,...................i::,.....tt1ttttttttttt11tttttttt111t111111tttttt1111',0ah,0dh
BYTE '111111111111111111111111:...................:i:::.....ittttttttttttttttttttt1ttt111tttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr21 BYTE ' ',0ah,0dh
 BYTE'  tttftttttttttttttttttffftttt1111111tt1111tt11111111tttt1ttt11tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfftttttttttttttttffLfftfftttffttttt111111111111ttffffftttt1111111111111111ttffttfttttttttt1111tttt',0ah,0dh
BYTE 'tttttttttttttttttffffftttffffffffffft1111tttt111ttffffffttttttttt11111tttttffffftfLLfttttttt1111ttt1',0ah,0dh
BYTE 'ttttttttttttttttffffftttffffffLffftt11111iiiii1tfffffffffttttttt11111tfffffffLfttffffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffttttt11::,,,,,,::1fffffftttttt111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttffLLftttttttf1:,,,,,,,,,,,itfffftttfffft11t111tt111tttffLLfttfftt1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLffttfffttt1,,,,,,,::::::itttftttffffffftt1111tftt11t11tfLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttffLfft1:,,,,,:ii11111ffttttffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttfLfLLLLLLLLfttttffftfffftt1:,,,,:iii1111fftttfffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttffttfLLLLLLLLLLfttfttffftttttf1,,,,,:iiiiiii1ttttttttfffffftt1111ttt1ttt1ttfttt11tfffffLLLLfttt',0ah,0dh
BYTE 'ttfffftfffLLLLLfffftfffttttffftfLt::iiiiiii11tfffft11tfffft111111ffft1tt1ttt1tt1tfffLLLLLLLffff',0ah,0dh
BYTE 'tffftfttttfLLLfttttttffftttfLLftff1iiii1iiitfffffft11tttt1ttt111fffttfffttttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttfffttttttttttttttffftfffiiiiiii1tffffffftt1ttt1111111ffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttffffffffftttt1tffftfftiiiiii1tttffffttt1tffft11111tfttfffttt1tttttttttfLLftfffft',0ah,0dh
BYTE 'ttffffffffftttfffffffftttftt1tftt111iii111tfftft11tttttfft1111tt1tffttffttfffffLLffffffLffLL',0ah,0dh
BYTE 'tttfffffffttttfffffffft1tt111111i::iii11t111ttt111tffttttftt1111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffftfftt111111i:,..,iiiiiii11:111111tfffft11t11111tfftttttttt1tfffffLfftttfLLLLf',0ah,0dh
BYTE 'tttttttttffttfttt1111111i:,.......:11iiii11::,:i1tftfffft1111111tttt11ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttt1t1111111i:,...........:1t1iiiitt:.,,,:itffftt11t1111ttt11tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'tttttffftt1111ttttt1:..............,i111ii1tti::,,,,.,1tft111tt1111ttt11tf1tffffftttttt1ttttttftt',0ah,0dh
BYTE '111tfffffft1tfttttt.................:,.:i:.,,,,,.t11111111111tt111tft1tffffttfffftt11tfffLf',0ah,0dh
BYTE '111ttfffft111ttttt1,..................::,.:1.....,.:11tt11111111111t11tf1tfffttfffffffttfLfLLf',0ah,0dh
BYTE 'tttt1tftt111111tt11,..................,:,.1.......,1t111t11t1111111111tttffttttffffftt11fffLf',0ah,0dh
BYTE 'tttt111tttttt11111....................::,..,:.......,i11tttt11111111tttt11tttfLffttfft1tt1tffft',0ah,0dh
BYTE '1tttt11ttttttt111i.....................,::,..,:.........ittttttt111111tttffttttffLLffttttffffttttf',0ah,0dh
BYTE 'tfftt11ttttttt111,......................::::,..,:,........itttttttt11111ttttfftttffffffftttttttffttf',0ah,0dh
BYTE 'ttfft11ttttttt11.......................,:::,..,:,........11tttt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tttft11ttttttt11:........................,:,,..,:,........,111tt1111111111tftttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'ttttt11ttttttt11,.......................,,::,..,:..........it11111t11111t111tttttffLLLLfttffftfffttf',0ah,0dh
BYTE 'tttt111tttt1t11i......................:::.,:..........t11tttt11111tt11tffttffffffftttffftffttt',0ah,0dh
BYTE 'ttttt11tt111111:....................,:::ii,.,:..........ttttttt1111111111tttttfttffft1tttttffttt',0ah,0dh
BYTE 'ttttt11ttttttt1....................,:::i:..,,...........:iii1111111111tt1t1ttfffttt11ttttttfttt',0ah,0dh
BYTE 'ttttt11tttttt111:...................,:::...,,........... .,::i1111ttt1111ttttttt11ttttttfttt',0ah,0dh
BYTE '11111111t11t11111,..    ...............,,,....,:....  .......,:::::11tt11111111tt1tt1111ttttttt1t',0ah,0dh
BYTE '11111111111111111t11i:.......,.....   ......,,....,,.   ...,::::i1111111111111111111111111tt111',0ah,0dh
BYTE '11111111111111111111tttti,...................,.,,... :1i:,.    .,,i1111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i,...................:,,,.....ittt1i:,.. ,1tttt111111111111111111111111t1111',0ah,0dh
BYTE '111111111111111111111111,...................,,::.... .111tttt1ii1ttt11111111t11111111111111111t1111',0ah,0dh
BYTE '111111111111111111111111....................,:::......it1t11ttttt1111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111....................,::,......t1tttttt11tt1tt111t1111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111t:....................::::......:1111ttttttttttt1tt11ttt11111111111tttttt1111',0ah,0dh
BYTE '11111111111111111111111t:....................:::,.....,1tttttttttttttttttttttttt111tttttttttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr22 BYTE ' ',0ah,0dh
 BYTE'  tttftttttttttttttttttffftttttt11ttttt1111tt11111111tttt1ttt11tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfftttttttttttttttffLfftfffttffttttt111111111t11ttffffftttt1111111111111111ttffttfttttttttt1111tttt',0ah,0dh
BYTE 'tttttttttttttttttffffftttffffffffffft1111tttt111tfffffffttttttttt11111tttttffffftfLLfttttttt1111ttt1',0ah,0dh
BYTE 'ttttttttttttttttffffftttffffffLfffttt1111ttttt1tffffffffffttttttt11111tfffffffLfttffffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttfffftttftttffffffffttttft1i:i11tfffffftttttt111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttffLLfttttttfft1:,,,,,,,,:1ttfffftttfffft11t111tt111tttffLLfttffft1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLffttfffttti::,,,,,,,,,,ttttftttffffffftt1111tftt11t11tfLLfttt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttfffffti,,,,::iiiii1ffttttffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttfLLLLLLLLLLftttttfftfffftt1:,,,iii1111111fftttfffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttffttfffLLLLLLLLfttfttffftttttff:,,:iiii1ii1tttttttttfffffftt1111ttt1ttt1ttfttt11tfffffLLLLfttt',0ah,0dh
BYTE 'ttfffftfffLLLLLfffttfffttttffftfLt:,:iiiiii11tfffft11tfffft11111tffft1tt11tt1ttttfffLLLLLLLffff',0ah,0dh
BYTE 'tffftfttttfLLffttttttffftttfLLftff1iiiiii11ttfffftt11tttt1ttt11tfffttffft1ttfft1tffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttffftttttttttttttfffLtfffiiiiiittffffffftt1ttt1111111ffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttft1tffftfftiiiiii1ttttffffttt1tffft11111tfttfffttt1tttttttttfLLfffffft',0ah,0dh
BYTE 'ttffffffffftttfffffffftttfttttftttttiiiii1111tfftft11ttttffff1111tt1tffttffttfffffLLffffffLffLL',0ah,0dh
BYTE 'ttffffffffttttfffffffft1tt11111tft11iiit11111tt111tffttttft11111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffftttfffftfftt1111111111i:,iii1i111111tfffft11t11111tfftttttttt1tfffffLfftttfLLLLf',0ah,0dh
BYTE 'ttttt1tttffttfttt11t111tttt1i:,...:1iiiii1i:ii1tftfffft1111111tttt11ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttt1tt1111111ttt1:,,.......tiiiiit1,..,:i1fffft11t1111ttt11tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'ttttfffftt1111ttttt111:,...........tt11iii1t1::,,,,,.,1ft111tt1111ttt11tf1tffffftttttt1ttttttftt',0ah,0dh
BYTE '111tfffffft1ttttttt11,..............:i11iii111:,,,,,,,,.t1111t11111tt111tft1tffffttfffftt11tfffLf',0ah,0dh
BYTE '111ttfffft111ttttttt.................::.,ii,....,,.:1tt11111111111t11tf1tfffttfffffffttfLfLLf',0ah,0dh
BYTE 'tttt1tftt11111ttt111:.................,i,.,1i,.......:t111111t1111111111tttffttttffffftt11fffLf',0ah,0dh
BYTE 'tttt11ttttttt1111111,..................:,,,,.......:11tttt11111111tttt11tttfLffttfft1tt1tffft',0ah,0dh
BYTE '1tttt11ttttttt11111i...................,:,..:,........:1tttttt111111tttffttttfLLLLfttttffffttttf',0ah,0dh
BYTE 'tfftt11ttttttt11111:....................:i:,.,:,........,1ttttttt1111ttttffftttffffffftttttttffttf',0ah,0dh
BYTE 'ttfft11ttftttt111ti,.....................::,..:,........,i1tttt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tttft11ttttttt111t......................,::,...:,.........11t11111111111ttt1tttffLLLLfttfffffffttf',0ah,0dh
BYTE 'ttttt11ttttttt111t:......................,::,...:,...,,....it11111111111t111tttttfffLLLfttfffftffttf',0ah,0dh
BYTE 'tttt11tttt11tt1111,.......................,,,...:,...,:itt11ttt1111ttt1ttftttffffffftttffftffttt',0ah,0dh
BYTE 'ttttt11t111111111i.........................,,...:,...,:iiii11111t111111t111tttttttttffft1tftttffttt',0ah,0dh
BYTE 'ttttt11ttttttt111,.........................,,...:....,:iii11111111111111ttttt1ttfffttt11ttttttfttt',0ah,0dh
BYTE 'ttttt11ttttttt111...................,,,,..,....,......,:ii1ttt1111111111ttt1111tfttttt11ttttttfttt',0ah,0dh
BYTE '11111111t11t11111t...............,:::::::..,...:.........,,it11tt1111111tttt1111ttt1tt1111ttttttt1t',0ah,0dh
BYTE '1111111111111111111,.............:::::i:......:.....     :1ttttt111111111111111111111111111111t111',0ah,0dh
BYTE '11111111111111111111,.. ........,:::::.......,... ,ii1tttt111111111111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111t11i,.........,:::. ..,:,.:.....itttttttt1111111t111111111111111111111111t1111',0ah,0dh
BYTE '11111111111111111111111t...........,,,.... ,:,,:......it1111ttt1111111111111111111111111111111t1111',0ah,0dh
BYTE '111111111111111111111111..........    .... .:,,:,. ...:tttt11tt111111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111....................::::..,,..,1tttttttt1tttt1111t1111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111t....................::::..,,...t1tttttttttttt1t11ttttt111t111111tttttt1111',0ah,0dh
BYTE '11111111111111111111111ti....................:::,......:11tttttttttttttttttttttt11t11t1111ttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr23 BYTE ' ',0ah,0dh
 BYTE'  tttftftttttttttttttttfffttttt1111tttt111tttt1111111tttttttt11tttt111111tttttttttttttttttttt1111111tt',0ah,0dh
BYTE 'ttfftttttttttttttttffLfttfffttffttttt111111111t11tfffffftttt1111111111111111ttffttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttfffffftttffffffffffftt11ttttt111tffffffftttttttt11111ttttttffffftfLLfttttttt1111ttt1',0ah,0dh
BYTE 'ttttttttttttttttffffftttffffffLfffttttt11tttt11tffffffffffttttttt1111ttfffffffLfttffffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffftttft1tttt11ttt1ttfffffftttttt111t111111ttffffLLffttfLLft111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttffLLftttttttfft11iiiiiittt1ttfffffttfffft11t111tt111tttffLLfttffft1ttt11tttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLffttfffttfft::,,,,,,:itttttffttffffffftt1111tftt11t11tfLLftttt1tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLLfttfttttffffft11i:,,,,,,,,:,fffttttffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttfffttffftt1:::::iii:tfftttfffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttffttfffLLLLLLLLfttfttfLfttttfft:iii111111i1ttttttttffffffftt1111ttt1ttt1ttftt11ttfffffLLLLfttt',0ah,0dh
BYTE 'ttfffftfffLLLLLLffftfffttttfffffLf:ii1iiiii11tfffft11tfffft11111tffft1tt11tt1ttttfffLLLLLLLffff',0ah,0dh
BYTE 'tffffftttffLLffftttttffffttfLLffffi:iiiii11ttffffft11tttt1ttt11tfffttffft1ttfftttffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttffftttttttttttttfLfftffiiiiii11111tfffffffftt1ttt1111111ffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttftttfLftf1i1111tttffffftttttffft11111tfttfffttt1tttttttttfLLfffffft',0ah,0dh
BYTE 'ttffffffffftttfffffffftttfftttftttt1iiiii1111ttftft11ttttffff1111tt1tffttffttfffffLLfffffffffLL',0ah,0dh
BYTE 'tttfffffffttttfffffffft1ttt1111tfftt1iiii1tt111ttt111tffttttft11111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttffffttftt111t11111ttfft1ii1tii11111ttffft11t11111tfft1tttttt1tfffffLfftttfLLLLL',0ah,0dh
BYTE 'ttttt1tttffttfttt111111tttt11111tti:iiii1:i1i1ttftfffft1111111tttt11ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tfttttttttt1tt11t1111ttfftt1tt1i:..iiii1i::,,:i1ffftt11t1111ttt11tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'tfttfffftt1111tttttt1tttttt1i,.....:11iiiti:,,,...,:1t111tt1111ttt11tf1tffffftttttt1tttttfftt',0ah,0dh
BYTE '1t1tfffffft1tttttttt111tti:,....,...,i11iiii1tii,,,,,,,,.,i111t11111tt111tft1tffffttfffftt11tffLLf',0ah,0dh
BYTE '1t1ttfffft111tttttt1111:,...........,i1t1iii11i,1,....,,...t11111111111t11tf1tfffttfffffffttfLLLLf',0ah,0dh
BYTE 'tftt1tftt1tt11ttt111tt..............,:i,.i1,.........:11111t1111111111tttffttttffffftt1tffLLf',0ah,0dh
BYTE 'tfftttttttttt111111ttt:................,i:,,:,.........:tttt11111111tttt11tttfLffttfft1tt1tffft',0ah,0dh
BYTE 'tttttt1ttttttt1111ttti,................,::,.,:..........,ttttt111111tttffttttfLLLLfttttffffttttf',0ah,0dh
BYTE 'tffft11ttttttt1111ttt..................,::,.,,..........,1tttt111111tttffftttffffffftttttttffttf',0ah,0dh
BYTE 'tffft11ttftttt111tttt:...................:::..::,,.........ittt11111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft11ttttttt111ttt1:...................,::,,::i,......t11111111111ttt1tttffLLLLfttfffffffttf',0ah,0dh
BYTE 'tttft11ttttttt111ttt1,....................,::,,::iii. ...,it11tt11111t111tttttfffLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt1tttttttt111t1ti.....................,:,,,,::iii.....,it11tt1111ttt1ttftttffffffftttffftffttt',0ah,0dh
BYTE 'ttttt11tt11111111t1ti......................,:,. ,,,:i:.......11tt11111t111tttttttttffft1tttttffttt',0ah,0dh
BYTE 'ttttt11tttt11t11tttt......................,,,..,, .,,.......,11111111111ttttt1ttfffttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt111ttt:.......................,,..,,.....,....:1ttt111111111ttt1111tfttttt11ttttttfttt',0ah,0dh
BYTE '1111111ttt1t11111tt1,.......................,,..:,.........:1t11111111111tttt1111ttt1ttt111ttttttt1t',0ah,0dh
BYTE '11111111111111111111.......    ............,,..:,.....,ii1t1t111111111111111111111111111111111t111',0ah,0dh
BYTE '111111111111111111111,.... .,::,................:....,11ttt11tt11t1111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111.....i,...............:,....it1111ttt1tt1111t111111111111111111111111t1111',0ah,0dh
BYTE '1111111111111111111111i:.,iiii:.......... ,::,:......itttttttt1111111111111111111111111111111t1111',0ah,0dh
BYTE '111111111111111111111111i,:ii,......... ,::,.....:1ttttttt11111111111t111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i,.,:::.......... ,::......itttttttt1tttt11t1tt111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i..,.................::,.,,..:1tt1tttttttttttt11ttttt11111111tttttttt1111',0ah,0dh
BYTE '111111111111111111111111i.....  .............i:::,.....itttttttttttttt1tttttttt11t11t1111ttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr24 BYTE ' ',0ah,0dh
 BYTE'  tttfttfttttttttttttttfffttttt1111tttt111tttt111111ttttttttt11tttt111111tttttttttttttttttttt111111ttt',0ah,0dh
BYTE 'ttfftttttttttttttttffLfftfftttffftttt111111111111tfffffftttt111111111111111tttffttfttttttttt11111ttt',0ah,0dh
BYTE 'ttttttttttttttttffffLffttfffffffffffttttttttt111tffffffffttttttt111111ttttffffLfffLLfttttttt1111t1t1',0ah,0dh
BYTE 'ttttttttttttttttffffftttffffffLffffttttttttttt1tffffffffffttttttt1111ttfffffffLfttffffffttt1111ttttt',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffftttftttttt11ttt1ttfffffftttttt111t111111ttffffLLffttfLLfft111111tttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttfLLLftttttttfftttttttfffft1tffffftttfffft11t111tt111tttffLLfttfftt1ttt111ttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftffft11iii1ttffttttffttffffffftt1111tftt11t11tfLLfftt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLffttfttttffLfLftti::,,,:itffftttfffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffftffffftt1,,,,,,,,::,:tfftttfffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttffttfffLLLLLLLLfttfftfLftttffff1::::iii,:1ttttttttffffffftt1111ttt1ttt1ttfttt1ttfffffLLLLfttt',0ah,0dh
BYTE 'ttfffftfffLLLLLfffftfffftttfLfffLfiiiii11111i:i1tfffft11tfffft11111tffft1tt11tt1ttttfffLLLLLLLffff',0ah,0dh
BYTE 'tffffftttffLLfffttttfffffttfLLffLfiiiiiiii:1tfffffft11tttt1ttt11tfffttffft1ttfft1tffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttffftttttttttttttffLLffLt:iiiiittffffffftt1ttt1111111ffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttftttfLftf11ii1ii11ii1tfffffftttttffft11111tfttfffttt1tttttttttfLLfffffft',0ah,0dh
BYTE 'ttffffffffftttfffffffftttfftttfttt11ii1111i111ttffft11ttttffft1111tt1tffttffttfffffLLfffffffffLL',0ah,0dh
BYTE 'tttfffffffttttfffffffftttttt111tfft11iiiii1t1111tt111tffttttft11111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE 'tttffffffffttfffffffft111tt1111ttfft1iiiiii1111111ttffft11t11111tfft1tttttt1tfffffLfftttfLLLLL',0ah,0dh
BYTE 'ttttt1tttffttfftttttt11ttttt111tttft1iiiiii1t11ttftfffft1111111tttt11ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tft1ttttttttttttttt11tffftt1tt11tff1iiiiii:ii1tttffftt11t1111ttt11tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'ttttffffttt11tttttft1tttttt1ttt11i,:iiii:...,,,:i1111tt1111ttt11tt1tffffftttttt1ttttttftt',0ah,0dh
BYTE '111tfffffft1ttfftttt11tttt1tfti,...,i1iiii1i,.........,i11111111tt111tft1tffffttfffftt11tffLLf',0ah,0dh
BYTE '1t1ttfffft111tftttt1111ttt11:,......11iii1t11......,.,,.,i1111111111t11tt1tfffttfffffffttfLLLLf',0ah,0dh
BYTE 'tftt1tftt1tt11ttt11ttt11i:,.........:1tt1ii1111............t11t1111111111tttffttttffffftt1tffLLf',0ah,0dh
BYTE 'tfftttttttttt111111tttt1,.............:::............:tt11111111tttt11tttffftttfft1tt1tffft',0ah,0dh
BYTE '1ttttt1ttttttt1111tt11ti................::,:,............,1tt111111tttffttttfLLLLfttttffffttttf',0ah,0dh
BYTE 'tffftttttttttt111tttt1ti................,::,:,.............ittt11111tttffftttffffffftttttttffttf',0ah,0dh
BYTE 'tfffttttfftttt111tttttt.................::::,:,.............:tt1111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffftttttttttt111tttttt.................,::::,:.,:,,.........,it11111111ttt1tttffLLLLfttfffffffttf',0ah,0dh
BYTE 'tttft11ttttttt111tttttt:..................,::::,:,,:,......itt11111t111tttttffLLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt1tttttttt1111t1ttt...................,::,,:,:iii.....,1tt1111ttt11tftttffffffftttffftffttt',0ah,0dh
BYTE 'ttttt11tt1111t111tt1ttt:...................,::,,:::iiii,.....:i1t1111t111tttttttttffft1tftttffttt',0ah,0dh
BYTE 'ttttt11ttttttt11ttttttt:....................::,,:..,,:ii:...... .1t111111ttttt1ttffffft11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt111tttttt:....................,::,:.   ..::,......,1t1111111ttt1111tfttttt11ttttttfttt',0ah,0dh
BYTE '1111111tttttt1111ttt1tt:.... ...............,:,,:..............,1t1111111tttt1111ttt1ttt111ttttttt1t',0ah,0dh
BYTE '11111111111111111111111:,...............,:,,:....... ...,,:1ttt11111111111111111111111111111t111',0ah,0dh
BYTE '11111111111111111111111iiiiii:...............,,,:........,:i11tt1tt111111111111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111iiiiiii...............,,,:.......,1tttt11tt1111t111111111111111111111111t1111',0ah,0dh
BYTE '1111111111111111111111iiiiiii,..............,.,:........ittt11t111111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111iiii,...............::::,,......:1ttttt11t111111111111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111i:,. ...............:i:::,......itttttt1ttt111t1tt111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111:................. :i::,.....ttttttttttttttt1ttttt111111111ttttttt1111',0ah,0dh
BYTE '11111111111111111111111111:................. :i::,....:tttttttttttttttttttttt11t11t1111ttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr25 BYTE ' ',0ah,0dh
 BYTE'  tttftttttttttttttttttfffttttt1t1ttttt111tttt1111111tttttttt11tttt111111tttttttttttttttttttt111111ttt',0ah,0dh
BYTE 'ttfftttttttttttttttffLLftffftfffftttt111111111t11tfffffftttt1111111111111111ttffttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLffttfffffffffffttttttttt111tfffffffftttttttt11111tttttfffffffLLfttttttt111tttt1',0ah,0dh
BYTE 'ttttttttttttttttfffffttfffffffLffffttttttttttt1tffffffffffttttttt1111ttffffffLLfttffffffttt1111tttt1',0ah,0dh
BYTE 'ttttttttttttfffftttftttffffffffftttfttttt111ttt1ttfffffftttttt111tt11111ttffffLLffttfLLff111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttfLLLftttttttffttttttttffft1tffffftttfffft11tt11tt111tttffLLfttfftt1ttt111ttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLffttfffftfffttttttfffffftfttffttffffffftt1111tftt11t11tfLLfftt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLffttfttttffffffttft111iii1ttfffftttffffffffffft111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffffftft1i:::,,,,::1fftttfffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttffttfffLLLLLLLLfttfftfLffftfffLf1,,,,,,,::,,:1tttttttffffffftt1111ttt1ttt1ttfttt1ttfffffLLLLfttt',0ah,0dh
BYTE 'ttfLfftfffLLLLLfffftfLfftttfffffLLf1iiiii:,:1tfffft11tfffft11111tffft1tt11tt1ttttfffLLLLLLLffff',0ah,0dh
BYTE 'tffffftttffLLfffttttfffffttfLLLffLfiiiii111111i::1tffffft11tttt1ttt11tfffttffft1ttfft1tffLLLLLLLLffL',0ah,0dh
BYTE 'tttftttttttffftttttttttttttfffLffLfiiiiiiiii:1ftffffftt1ttt1111111ffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttfttffLfffLti:iiii1ttffffftttttffft11111tfttffftttttttttttttfLLfffftft',0ah,0dh
BYTE 'ttffffffffftttfffffffftttfftttftttt1iii11111ii1ttffft11ttttffft1111tt1tffttffttfffffLLfffffffffLL',0ah,0dh
BYTE 'tttfffffffttttfffffffftttttt111tfff1iiiiiiiii1111tt111tffttttft11111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE '1tfffffffffttfffffffftt1ttt1111tffft1iiiiiiii111111tfffft11t11111tfft1tttttt1tfffffLfftttfLLLLL',0ah,0dh
BYTE 'tttttttttffttfftttttt1ttfft1111tttftt1iiiiii:tt11ttftfffft1111111ttttt1ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tft1ttttttttttttttt11tfffft1tt11ttft11iiii1t11ttttffftt11t1111tftt1tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'ttttffffttt11tttttft1ttfffttfft11tftiiiiiii:ii1tttft111tt1111ttt11tt1tffffftttttttttttttftt',0ah,0dh
BYTE '111tfffffft1ttfttttt11tfftttfttt11i:,iiiiii:.....,,::i111t11111tt111tft1fffffttfffftt11tffLLf',0ah,0dh
BYTE '1t1ttfffft111tffttt1111tft1ft1i:,...1ii11:...........,1111111111t11tt1tfffttfffffffttfLLLLf',0ah,0dh
BYTE 'tftt1tftt1tt11tft11ttt111111:,......,111iii1t1:........,,...11t1111111111tttffttttffffftt1tffLLf',0ah,0dh
BYTE 'tffttttttttttt1111ttttt11:,.........,i111ii1t1,.............,1t1111111tttt11t1tfLftttfft1tt1tffft',0ah,0dh
BYTE '1ttttttttttttt1111ttt11ti,............,::::i:,..............it111111tttffttttfLLLffttttffffttttf',0ah,0dh
BYTE 'tfffttttffttttt11ttttttti...............,:...............:t111111tttffftttffffffftttttttffttf',0ah,0dh
BYTE 'tfffttttfffttft11ttttttt...............,::::...............,1t111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffft1ttttttttt11ttttttt:................,:::................it1111111ttt1tttffLLLLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttttttt:................,:::::................:t1111tt111tttttffLLLLfttfffftffttf',0ah,0dh
BYTE 'ttttt1tttttttt111111tt1t.................,::::::................,1t111ttt11tftttfffffffttfffftffttt',0ah,0dh
BYTE 'ttttt1tttt11tt111ttttttt:.,::............,::::::................,itt111t111ttt1tttttfft11tftttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttt:iii:............,:::::...........,:,....:1t11111tttt11tfffttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt111tttttttiiiii:. ..........:::::...........,:..it1111tft1111ttttttt11ttttttfttt',0ah,0dh
BYTE '1111111tttttt1111ttttttt:iiiii............,::::,........,::iiiit111ttttt11111tt1ttt111ttttttt1t',0ah,0dh
BYTE '111111111111111111111111:iiii,...........,:,::,.........,iiiiit111111111111111111111111111tt11',0ah,0dh
BYTE '111111111111111111111111::,............,::::,...........:iiit1111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111::.... .............,:::,,.........  .,,:i1t1111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i,..................,,,:,,....... .,..,11111111111111111111111111111t1111',0ah,0dh
BYTE '1111111111111111111111111i:i,..............,,:,,,........1tii11t111111111111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111111111:..............,::::,.......ttttttttt11t1tt111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111,..............:iii:,.....,1ttt1tttttttt1ttttt1111111111tttttt1111',0ah,0dh
BYTE '1111111111111111111111111111i,...............,iiiii:......ittttttttttttttttttt11t11t1111ttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr26 BYTE ' ',0ah,0dh
 BYTE'  tttftttttttttttttttttfffttttt1t1ttttt111tttt1111111tttttttt11tttt111111tttttttttttttttttttt111111ttt',0ah,0dh
BYTE 'ttfftttttttttttttttffLLftffftfffftttt111111111t11ttffffftttt1111111111111111ttftttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLffttfffffffffffttttttttt111tfffffffftttttttt11111tttttffffftfLLfttttttt111tttt1',0ah,0dh
BYTE 'ttttttttttttttttfffffttfffffffLfffftttttttttt11tffffffffffttttttt1111ttfffffffLftttfffffttt1111tttt1',0ah,0dh
BYTE 'ttttttttttttfffftttftttffffffffftttfttttt111ttt1ttfffffftttttt111tt11111ttffffLLffttfLLff111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttfLLLftttttttffttttttttffft1ttfffffttfffft11tt11tt111tttffLLfttfftt1ttt111ttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftffftttttfffffffffttffttffffffftt1111tftt11t11tfLLfftt11tffftttttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLffttfttttffLffftfftttttfftffffffftttffffffffffft111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffffftfftt11iii:i1tfftttfffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttffttfLLLLLLLLLLfttfftfLffttfffLLft1:::,,,,::1ttttttffffffftt1111ttt1ttt1ttfttt1ttffffLLLLLfttt',0ah,0dh
BYTE 'ttfLLftfffLLLLLLLfftfLfftttfLfffLLLfti,,,,:::::,,fffft11tfffft11111tffft1tt11tt1ttttfffLLLLLLLffff',0ah,0dh
BYTE 'tfffffttttfLLfffttttfffffttLLLLffLLf1iiiiii11i:,tfffft11tttt1ttt11tfffttffft1ttfft1tffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttffftttttttttttttfffLffLLf1iiiiiii1111:tffffftt1ttt111111tffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttffffffffftttfffffffffttfttffLfffLf111iii1i:itfffftttttffft11111tfttffftttttttttttttfLLfffftft',0ah,0dh
BYTE 'ttffffffffftttffffffffttffftttftttttt1iiiiiiiifftft11tttttffft111tt1tffttffttfffffLLfffffffffLL',0ah,0dh
BYTE 'tttfffffffttttfffffffftttttt111tffft11iii11111111tt111tffftttft11111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE '1tfffffffffttfffffffftt1ttt1111fffft111iiiiiiii11111ttfffft11111111tfft1tttttt1tfffffLfftttfLLLLL',0ah,0dh
BYTE 'tttttttttffttfftttttt1ttftt1111ttffttt1iiiii1t11ttttfffft1111111ttttt1ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tft1ttttttttttttttt1ttfffftttt11ttft1t1iiiiii:1t111tttffftt11t1111tftt1tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'ttttfffftttt1ttttfft1tffffttfft11tft111iii:i11111ttttt1111t1111ttt11tt1tfffffttttttttttttffft',0ah,0dh
BYTE '111tfffffftttffftttt11tfftttfttt1ttt1i1iiiiiii::i111tt11111t11111tt111tft1fffffttfffftt1ttfLLLf',0ah,0dh
BYTE '1t1ttfffft111tffttt1111tfttft11tti::,i1iii11:...,,::i1tt1111111111t11tt1tfffttfffffffttfLLLLf',0ah,0dh
BYTE 'tttt1tftt1tt11ttt11ttt1111tt11i,,....1ii11:.,.......,,:i11t1111111111tttffttttffffftt1tffLLf',0ah,0dh
BYTE 'tffttttttttttt1111ttttt111i:,........1t1iii1ii,.............t1111111tttt11t1tfLftttfft1tt1tffft',0ah,0dh
BYTE '1ttttttttttttt1111tttttt11:...........:iiiiii1tti,..............,1t11111tttttttttfLLLffttttffffttttf',0ah,0dh
BYTE 'tfffttttffttttt11ttttttt1i,.............,:::ii,...............t11111ttttfftttffffffftttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt1..............,::,...............,1111111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tffftttttttttt111ttttttt1:.......... ....::,................it111111tttttttffLLLLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttttttt1,........,,::,.,:,................t1111t111tttttffffLLfttfffffffttf',0ah,0dh
BYTE 'ttttt1tttttttt1111t1tttt1,.......:,..:::::,................,1t11ttt11tftttfffffffttfffftffttt',0ah,0dh
BYTE 'ttttt1tttt11tt111ttttttt1:......:,.:::::,................,it111t1111tt11ttttfft11tftttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttti,......:::...,:::::,.................:1t11111tt1t11tfffttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttti,......:::.....,:::::,..................:11111ttt1111ttttttt11ttttttfttt',0ah,0dh
BYTE '1t1t111tttttt111111ttttt...,,,.,:::. ......:::::,...................,111tttt11111ttttt1111ttttttt1t',0ah,0dh
BYTE '111111111111111111111111,,,,,,,.............,:::::,..................,1t111111111111111111111111tt11',0ah,0dh
BYTE '11111111111111111111111i,,..:,..............,,::::,,.................,11tt11111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111...................,:,,::,,.................,ii11t111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111i,..................,:::::,,................:::i111t111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111ii1:............::,:,,,,...........  ..::i1111111111111111111111111',0ah,0dh
BYTE '111111111111111111111111111111t1,............,.,:,,,:,,........:,,..,:i11t11111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111111111i.............,,::i:,...... :111i::1ttttt11t1111111tttttt1111',0ah,0dh
BYTE '111111111111111111111111111111ti.............:11iiii:,.......i1tttt11111tt1tt111111t1111ttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr27 BYTE ' ',0ah,0dh
 BYTE'  tttttttttttttttttttttfffttttt1111tttt111tttt1111111tttttttt11tttt111111tttttttttttttttttttt111111ttt',0ah,0dh
BYTE 'ttfftttttttttttttttffLLftffftfffftttt111111111t11ttffffftttt1111111111111111ttftttfttttttttt1111tttt',0ah,0dh
BYTE 'ttttttttttttttttffffLffttfffffffffffttttttttt111tfffffffftttttttt11111tttttffffftfLLfttttttt1111ttt1',0ah,0dh
BYTE 'ttttttttttttttttfffffttfffffffLfffftttttttttt11tffffffffffttttttt11111tffffffffftttfffffttt11111ttt1',0ah,0dh
BYTE 'ttttttttttttfffftttffttffffffffftttfttttt111ttt1ttfffffftttttt11tt111111ttffffLLffttfLLff111111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttfLLLfttttttffffttttttfffft1tffffffttfffft11t111tt111tttffLLfttfftt1ttt111ttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftfffttttttfffffftfttfftffffffffttt111tftt11t11tfLLLftt11tffft1tttttt',0ah,0dh
BYTE 'tttttttfLfLLLLLLLLffttfttttffLLfftffttttffffffffffftttfffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffLLftffttttttt11iii1tftttfffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttffttfLLLLLLLLLLfttfftfffffffffLLfttt1i::,,,,:1tttttffffffftt1111ttt1ttt1ttfttt1ttfffffLLLLfttt',0ah,0dh
BYTE 'ttfLLftfffLLLLLLLfftfLfftttfLfffLLLLttt1,,,,,,,::,:iftt11tfffft11111tffft1tt11tt1ttttfffLLLLLLLLfff',0ah,0dh
BYTE 'tfffffttttfLLfffttttfffffttLLLLfLLLftt1iiiii:,fftt11tttt1ttt11tfffttffft1ttfft1tffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttffftttttttttttttffLLffLLftt1iiiii11111i::tfffft1ttt111111tffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttfttffLfffLftt1iiiiiiiitfftttttffft11111tfttffftttttttttttttfLLftfffft',0ah,0dh
BYTE 'ttffffffffftttffffffffftffftttfttftttttiiiiiiiftt11tttttfft1111tt1tffttffttfffffLLfffffffffLL',0ah,0dh
BYTE 'ttffffffffttttfffffffftttttt11ttfffttt11iiii1111ii11111tffftttftt1111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE '1ttffffffffttfffffffftt1ttt111tffffttt1i1iiiiiii1111ttfffft11t11111tfft1tttttt1ttffffLfftttfLLLLf',0ah,0dh
BYTE 'tttttttttffttfftttttt1ttfff1111ttffttttt1ii:it11ttftfffft1111111ttttt1ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tft1ttttttttttttttt11tfffftttt11tfftt11tt1ii1t111tttffftt11t1111tttt1tt1tffftt1111ttfftfLffftt',0ah,0dh
BYTE 'tfttfffftttt1ttttfft1tffffttfftt1tft1111t1i:i11111tttft111tt1111ttt11tt1tfffffttttttttttttffft',0ah,0dh
BYTE '1tttfffffftttffftfft11tfffttfttttttt11111i:iiii1ii1t1tt11111t11111tt111tft1fffffttfffftt1ttffLLf',0ah,0dh
BYTE '1t1tffffft111tffttt1111tfttft11tt1t1i1iii1ii1,.,:ii1tt11111111111t11tt1tfffttfffffffttfLfLLf',0ah,0dh
BYTE 'tfttttftt1tt11ttt11ttt11t1t11tt11i:,...,11it111,,.....,:i11tt1111111111tttffttttffffftt1tffLLf',0ah,0dh
BYTE 'tffttttttttttt1111ttftt111111i:,......:1t1ii1t1,..........,:i1111111tttt11t1tfLftttfft1tt1tffft',0ah,0dh
BYTE '1ttttttttttttt1111ttttt111tt..........:1111iii111:.............,it1111tttttt1ttfLLLffttttffffttttf',0ah,0dh
BYTE 'tfffttttffttttt11ttttttt11t1,...........,,:::i:...............:t1111ttttfft1tffffffftttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11ttttttt111i..............::::::...............,1t1111ttffttttffLLfLfttfffffffttf',0ah,0dh
BYTE 'tfffttttttttttt11ttttttt111:..............,:,................t11111ttt1t1tffLLLLfttfffffffttf',0ah,0dh
BYTE 'tffft1tttttttt111ttttttt11i,..........,:::::,................,1t11t111tttttffffLLfttfffffffttf',0ah,0dh
BYTE 'ttttt1tttttttt111tt1tttt11i.........::,::::::.................t1ttt11tftttffffffftttffftffttt',0ah,0dh
BYTE 'ttttt1tttt11tt111ttttttt111,.......:,:::::::,................:tttt1111tt11ttfttft11tftttffttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttt11,......,:::::::::,................,itt111t11t11ttftttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttt11,......:i...,:::::,,.................:tt1tttt1111ttttttt11ttttttfttt',0ah,0dh
BYTE '1t1t111tttttt111tttttttt1,.,.....,::......,:::::,,..................it1tttt11111tttt11111ttttttt1t',0ah,0dh
BYTE '1111111111111111111111111:,,,......,,. .....,,::::,,..................,1t11111111111111111111111tt11',0ah,0dh
BYTE '1111111111111111111111111,,....,,...........,,,:::::,..................itt11111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111,.................,:::::::,,................:1tt11111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111:....  ............,:::,:,,.................,1tt11111111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111iii, .........,,::,,,,,................,:1tt11111111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111111t1,..........,,,:,,:,:,,. ...........,:::i11tt11111111111111111111',0ah,0dh
BYTE '11111111111111111111111111111111t.............,::::,........  .,::::i1t111111111ttttttt11111',0ah,0dh
BYTE '111111111111111111111111111111111:...........,i1iiii:,.......::,,::::i1ttt111t11t1111ttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh
arr28 BYTE ' ',0ah,0dh
 BYTE'  tttftttttttttttttttttfffttttt1111tttt111tttt1111111tttttttt11tttt111111tttttttttttttttttttt11111111t',0ah,0dh
BYTE 'ttfftttttttttttttttffLLftffftfffftttt111111111t11ttffffftttt1111111111111111ttftttfttttttttt1111tttt',0ah,0dh
BYTE 'ttftttttttttttttffffLffttfffffffLfffttttttttt111tfffffffftttttttt11111ttttttfffftfLLfttttttt111tttt1',0ah,0dh
BYTE 'ttttttttttttttttfffffttfffffffLfffftttttttttt11tffffffffffttttttt11111tfffffffffttffffffttt11111ttt1',0ah,0dh
BYTE 'tttttttttttffffftttffttffffffffftttfttttt111ttt1ttfffffftttttt11tt111111ttffffLLffttfLLfft11111ttttt',0ah,0dh
BYTE 'ttttttttttffLLLLftttttfLLLfttttttffLftttttttffft1ttfffffttfffft11t111tt111tttffLLfttfftt1ttt111ttttt',0ah,0dh
BYTE 'ttttttttfffLLLLLLffttfLLLfttfffftfLfttttttffffffffftftttfffffffttt111tftt11t11tfLLfftt11tffft11ttttt',0ah,0dh
BYTE 'tttttttfffLLLLLLLLffttfttttfLLLfftffttttffftt1iii11tttfffffffffftt111tft1ttft11tffLfttttfffffftttttt',0ah,0dh
BYTE 'tttttttffLLLLLLLLLfttttffffffLffffftttttfti::,,,:i1tffffffffftt1111111ttftttttttttttfffffLLfffttt',0ah,0dh
BYTE 'tttfffffLLLLLLLLLLfttfftfLfffffffLLfttttt1,,,,,,,::,:ittffffffftt1111ttt1ttt1tftttt1ttffffLLLLLfttt',0ah,0dh
BYTE 'ttfLLffffLLLLLLLLfftfLfftttfLfffLLLLfttt1i:::iiii,t11tfffft11111tffft1tt1ttt1ttttfffLLLLLLLLfff',0ah,0dh
BYTE 'tffffftttffLLLffttttfffffttLLLLfLLLffttf1iiii11111i::1t11tttt1ttt11tfffttfftttttfft1tffLLLLLLLLffL',0ah,0dh
BYTE 'tttttttttttffftttttttttttttfffLffLLftttti:iiiiiiitftt1ttt111111tffftfffftttttttt1ttfLLLLffffff',0ah,0dh
BYTE 'ttfLffffffftttfffffffffttfttffLfffLftttttiiiii1iiftttttffft11111tfttffftttttttttttttfLLftfffft',0ah,0dh
BYTE 'ttffffffffftttffffffffftfffftffffftttttft11iiiii1iiit11tttttfft1111tt11ffttffttfffffLLfffffffffLL',0ah,0dh
BYTE 'ttffffffffttttfffffffftttttt1tttffftttttti1iii11iii111tffftttftt1111tt1ttttfft1tffffLLLfttfLLLLLL',0ah,0dh
BYTE '1ttffffffffttfffffffftt1ttt1111tfffftttt111iiiiiii111ttfffft11t11111tfftttttttt1ttffffLfftttfLLLLf',0ah,0dh
BYTE 'tttttttttffttfftttttt1ttfftttt1ttfftttttt111ii:ii11ttftfffft1111111ttttt1ttfft11ttffffffftfLLLLLf',0ah,0dh
BYTE 'tft1ttttttttttttttt11tfffftttt11tfftt1ttt111iiii1ttttffftt11t1111ttt11tt1tffttt1111ttfftfLffftt',0ah,0dh
BYTE 'tfttffffttt11tttttft1tffffttffttttft111ttt11:i1i111tft111tt1111tt111tt1tfffffttttt11tttttffft',0ah,0dh
BYTE '1tttfffffftttffftfft11tfftttffttttft1111iii1iiiii1i,,,:i11tt1111tt111tft1fffffttfffftt11tffLLf',0ah,0dh
BYTE '111ttfffftt1ttffttt1111tfttft11tt1t1i:,,,1ii1iiiti,,.....,:i1t11111t11tt1tfffttffffffft1fffLLf',0ah,0dh
BYTE 'tfttttftt1tt11tft11ttt11tttt1tt11i:,.....11ii1i1tt,,.........,:i11111111t1tffttttffffftt1tfffLf',0ah,0dh
BYTE 'tffttttttttftt1111ttttt11111tft,.........11111i1ttti,.............,1111tttt1111tffftttfft1tt1tffft',0ah,0dh
BYTE '1ttttttttttttt1111tttttt11tfff1,...........,:11i:...............itttttttt1ttfffLffttttffffttttf',0ah,0dh
BYTE 'tfffttttffttttt11ttttttt11tfffi............ ,:,...............t1ttttfft1tffffffftttttttffttf',0ah,0dh
BYTE 'tfffttttfffffft11tttttttttt1tf..............:,...............:111ttttttttfffLfLfttfffffffttf',0ah,0dh
BYTE 'tfffttttftftft111ttttttt11t111:..............:::,...............,1t11ttt1t1tffLLLLfttfffffffttf',0ah,0dh
BYTE 'tfffttttfttttt111ttttttt11ttt1:..............,::::................itt111tttttffffLLfttfffffffttf',0ah,0dh
BYTE 'tttttttttttttt111ttttttt1ttfft:..............,::::................:1tt11tft1tffffffftttffttffttt',0ah,0dh
BYTE 'ttttt1tttt11tt11tttttttt1tttt1.,::,..........::::::,...............,1t1111tt11tttttft11tfttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt11ttttttttt1ttt1,::..........,::::::,,................it11111111ttftttt11ttttttfttt',0ah,0dh
BYTE 'ttttt1tttttttt11tttttttttttttiiiiii,.........,:::::::,................:ttttt1111ttttttt11ttttttfttt',0ah,0dh
BYTE '1t1111tttttttt11tttttttt1ttt1ii,.........,:::::::,.................ittttt1111tttt11111ttttttt1t',0ah,0dh
BYTE '11111111111111111111111111tt1ii...........::::::::................ :1t111111111111111111111t111',0ah,0dh
BYTE '11111111111111111111111111tt1::i:...........,:::::::,...............,itttt11111111111111111111111',0ah,0dh
BYTE '11111111111111111111111tttttt,,,::............,::::::,,...............ittttt11111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111tttt1:,,..............,:::::,,,,.......,:::,:1t1111111111111111111111t1111',0ah,0dh
BYTE '11111111111111111111111111111111ii:..........,:,,,.,,.,.......::iit1ttt111111111111111111111111',0ah,0dh
BYTE '1111111111111111111111111111111111ti...........,,.,:,:::,......,:ii1ttttt11111111111111111t111111',0ah,0dh
BYTE '1111111111111111111111111111111111t...........,iiiiiii:,......:i1ttttt111t1111111111tttttt1111',0ah,0dh
BYTE '11111111111111111111111111111111111:...........,i11iiii:,.......,:i1tttttt1ttttt1t11t1111ttttt1111',0ah,0dh
BYTE ' ',0,0ah,0dh

.code

main PROC

<<<<<<< HEAD
    call GAME_START
    Invoke ExitProcess, 0
main endp




GAME_START PROC
=======

>>>>>>> main
loop1:
    
    mov ah, 0 ;ah清0給getkeystate判斷是否輸入
	INVOKE GetKeyState, VK_X
    .IF ah
        jmp stop1
    .ENDIF
    

    ; 顯示訊息
mov edx, OFFSET arr1
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr2
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr3
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr4
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr5
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr6
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr7
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr8
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr9
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr10
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr11
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr12
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr13
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr14
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr15
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr16
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr17
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr18
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr19
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr20
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr21
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr22
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr23
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr24
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr25
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr26
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr27
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF
mov edx, OFFSET arr28
call WriteString
mov eax, 60
call delay
mov ah, 0
INVOKE GetKeyState, VK_X
.IF ah
     jmp stop1
.ENDIF

jmp loop1

stop1:
<<<<<<< HEAD
    call clrscr


    ret
GAME_START ENDP

=======
    Invoke ExitProcess, 0
main endp
>>>>>>> main

end main