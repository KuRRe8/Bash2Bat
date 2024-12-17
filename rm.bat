@echo off
@echo "rm: Linux style substitution of del and rmdir."

if "%1"=="" (
    echo Error: No file or directory provided.
    exit /b 1
)

setlocal enabledelayedexpansion

set RECURSIVE=0
set FORCE=0

:parse_options
if "%1"=="" goto end_parse_options

if "%1"=="-r" (
    set RECURSIVE=1
    shift
    goto parse_options
)

if "%1"=="-f" (
    set FORCE=1
    shift
    goto parse_options
)

:end_parse_options

set TARGET=%1

if %RECURSIVE%==1 (
    if %FORCE%==1 (
        rmdir /s /q "%TARGET%"
    ) else (
        rmdir /s "%TARGET%"
    )
) else (
    if %FORCE%==1 (
        del /f "%TARGET%"
    ) else (
        del "%TARGET%"
    )
)

endlocal