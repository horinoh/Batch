@echo off
setlocal enabledelayedexpansion

for /f "tokens=* delims=" %%i in ('findstr .*') do call :SUBFUNC %%i

:SUBFUNC
   if not "%PREV%"=="%*" (
        set PREV=%*
        if not "%*"=="" echo %*
    )
exit /b