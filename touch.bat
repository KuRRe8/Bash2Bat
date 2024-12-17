@echo off
@echo touch: Linux style substitution of several methods to create a new file,
@echo such as:
@echo "1 redirection"
@echo "2 copy nul"
@echo "3 fsutil file createnew"

if "%1"=="" (
    echo Error: No file name provided.
    exit /b 1
)

echo %1 | findstr /r /c:"[<>:/\\|?*]" >nul
if %errorlevel% neq 1 (
    echo Error: File name contains invalid characters.
    exit /b 1
)

@type nul > %1
echo File %1 created successfully.