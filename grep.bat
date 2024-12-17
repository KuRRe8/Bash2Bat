@echo off
@echo "grep: Search for a pattern in the input or files"

if "%1"=="" (
    echo Error: No search pattern provided.
    exit /b 1
)

setlocal enabledelayedexpansion

set PATTERN=%1
shift

if "%1"=="" (
    findstr /r /c:"%PATTERN%"
) else (
    findstr /r /c:"%PATTERN%" %*
)

endlocal