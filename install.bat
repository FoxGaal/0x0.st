@echo off
cd %appdata%\Microsoft\Windows\SendTo
title install
curl -s https://raw.githubusercontent.com/FoxGaal/Fast0x0/main/0x0.st.bat>Fast0x0.bat
echo.
echo Fast0x0 has been installed/updated, right click any file(s) then press "Send to" and Fast0x0(.bat)
echo File path: %appdata%\Microsoft\Windows\SendTo
PAUSE>nul
