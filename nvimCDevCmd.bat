@echo off
setlocal

:: Save the current working directory
set ORIGINAL_WD=%CD%

:: Set the architecture argument
set ARCH=%1
if "%ARCH%"=="" (
    echo No architecture specified. Defaulting to amd64.
    set ARCH=amd64
)

:: Call the VsDevCmd.bat script with the specified architecture
call "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -arch=%ARCH%

:: Restore the original working directory
cd /d %ORIGINAL_WD%

:: Launch Neovim
nvim

endlocal
