@echo off
setlocal EnableDelayedExpansion
title 0x0.st
color a
cd %CD%
echo.
echo ==================================================
echo        ____            ____               __ 
echo       / __ \   _  __  / __ \      _____  / /_
echo      / / / /  ^| ^|/_/ / / / /     / ___/ / __/
echo     / /_/ /  _^>  ^<  / /_/ /  _  (__  ) / /_  
echo     \____/  /_/^|_^|  \____/  (_)/____/  \__/ 
echo.
echo ==================================================
set ix=
for %%a in (%*) do ( 
    echo.
    echo Uploading: %%~nxa...
    echo.
    curl -F "file=@%%~nxa" https://0x0.st -# -o output.txt
    echo.
    
    FOR /F %%i IN (output.txt) DO (
        set ix=!ix! %%i
        echo Finished: %%i 
    ) 
)
echo !ix!| clip
PAUSE>nul
