@echo off
@echo "which: Linux style substitution of where, accept one param."

if "%1"=="" (
    echo Error: No parameter provided.
    exit /b 1
)

@where %1

if %errorlevel% neq 0 (
    echo Error: Command not found.
    exit /b 1
)