@echo off & setlocal enabledelayedexpansion

title Fast0x0
color a
cd %CD%
set LF=^


REM empty lines above are required
REM width=120

For /F %%e in ('echo prompt $E^|cmd')Do set "ESC=%%e"

echo.
echo ==================================================
echo        ____            ____               __ 
echo       / __ \   _  __  / __ \      _____  / /_
echo      / / / /  ^| ^|/_/ / / / /     / ___/ / __/
echo     / /_/ /  _^>  ^<  / /_/ /  _  (__  ) / /_  
echo     \____/  /_/^|_^|  \____/  (_)/____/  \__/ 
echo.
echo ==================================================
echo.
set linkClipboard=
set fileI=0

for %%a in (%*) do ( 
	set /a fileI+=1
	set /a yPos=!fileI!+10
	
	echo Uploading: %%~nxa...
	echo.
	
	call :curl %%~nxa
	
	echo !ESC![!yPos!;1HFinished: %%~nxa    
	echo.
	echo.                                                                                                                       
	echo !ESC![!yPos!;1H
)

set /p ="!linkClipboard!Uploaded with [Fast0x0](https://github.com/FoxGaal/Fast0x0/releases/download/v1/install.bat)"<nul>output.txt
clip<output.txt 

echo.
echo Copied link(s) to clipboard and are ready to share to discord
PAUSE>nul
exit

:curl
curl -F "file=@%1" https://0x0.st -# -o output.txt 
FOR /F %%i IN (output.txt) DO  set linkClipboard=!linkClipboard!^[%%~nxa ^]^(%%i^/%%~nxa ^)!LF!
