# Spotify to Tidal Sync Tool for Windows
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Spotify to Tidal Sync Tool for Windows" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Before running this tool, please make sure:" -ForegroundColor Yellow
Write-Host "1. You have updated config.yml with your Spotify username" -ForegroundColor White
Write-Host "2. Your Spotify app redirect URI is set to: https://cerlux.vercel.app/callback" -ForegroundColor White
Write-Host "3. You are ready to authenticate with Tidal when prompted" -ForegroundColor White
Write-Host ""

Read-Host "Press Enter to continue"

Write-Host "Starting Spotify to Tidal sync..." -ForegroundColor Green
Write-Host ""

try {
    python -m spotify_to_tidal
    Write-Host ""
    Write-Host "Sync completed successfully!" -ForegroundColor Green
} catch {
    Write-Host ""
    Write-Host "Error occurred during sync: $($_.Exception.Message)" -ForegroundColor Red
}

Read-Host "Press Enter to exit"
