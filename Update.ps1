Write-Host "Checking for yt-dlp.exe..."
$ytDlpPath = ".\yt-dlp.exe"

if (Test-Path $ytDlpPath) {
    Write-Host "yt-dlp.exe found. Updating..."
    & $ytDlpPath --update
    Write-Host "Update complete."
    Start-Sleep -Seconds 3
} else {
    Write-Host "Error: yt-dlp.exe not found in the current directory."
    Start-Sleep -Seconds 3
}
