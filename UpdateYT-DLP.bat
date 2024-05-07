@echo off
echo Checking for yt-dlp.exe...
set "ytDlpPath=.\yt-dlp.exe"

if exist "%ytDlpPath%" (
    echo yt-dlp.exe found. Updating...
    "%ytDlpPath%" --update
    echo Update complete.
    timeout /t 3 >nul
) else (
    echo Error: yt-dlp.exe not found in the current directory.
    timeout /t 3 >nul
)
