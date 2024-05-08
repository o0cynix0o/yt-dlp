@echo off

REM Use PATHTOYTDLP to set the path of your yt-dlp.exe

echo Checking for yt-dlp.exe...
set "ytDlpPath=PATHTOYTDLP"

if exist "%ytDlpPath%" (
    echo yt-dlp.exe found. Updating...
    "%ytDlpPath%" --update
    echo Update complete.
    timeout /t 3 >nul
) else (
    echo Error: yt-dlp.exe not found in the current directory.
    timeout /t 3 >nul
)
