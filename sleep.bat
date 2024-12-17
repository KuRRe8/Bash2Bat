@echo off
@echo "sleep: Pause for a specified number of seconds"

if "%1"=="" (
    echo Error: No time duration provided.
    exit /b 1
)

timeout /t %1 /nobreak