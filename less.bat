@echo off
@echo "less: Display file content one page at a time"

if "%1"=="" (
    echo Error: No file name provided.
    exit /b 1
)

more "%1"