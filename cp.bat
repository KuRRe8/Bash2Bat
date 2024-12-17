@echo off
@echo "cp: Linux style substitution of copy, with -r option."

if "%1"=="" (
    echo Error: No source provided.
    exit /b 1
)

if "%2"=="" (
    echo Error: No destination provided.
    exit /b 1
)

setlocal enabledelayedexpansion

set RECURSIVE=0

:parse_options
if "%1"=="" goto end_parse_options

if "%1"=="-r" (
    set RECURSIVE=1
    shift
    goto parse_options
)

:end_parse_options

set SOURCE=%1
set DESTINATION=%2

if %RECURSIVE%==1 (
    xcopy /e /i "%SOURCE%" "%DESTINATION%"
) else (
    copy "%SOURCE%" "%DESTINATION%"
)

endlocal
