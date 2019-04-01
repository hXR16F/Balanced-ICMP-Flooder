@echo off 
set "host=%~1" & set "verbose=%~2" & set "timeout=%~3" & set packet=64
:loop
	ping %host% -n 1 -l %packet% -w %timeout% > nul && (
		set /a packet=%packet%+64
		if %timeout% geq 80 set /a timeout=%timeout%-8
	) || (
		if %packet% gtr 64 set /a packet=%packet%-64
		set /a timeout=%timeout%+8
	)
	if /i "%verbose%" equ "y" echo .
	goto loop