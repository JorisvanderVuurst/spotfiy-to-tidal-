@echo off
echo ========================================
echo Spotify to Tidal Sync Tool for Windows
echo ========================================
echo.

echo Before running this tool, please make sure:
echo 1. You have updated config.yml with your Spotify username
echo 2. Your Spotify app redirect URI is set to: https://cerlux.vercel.app/callback
echo 3. You are ready to authenticate with Tidal when prompted
echo.

pause

echo Starting Spotify to Tidal sync...
echo.

python -m spotify_to_tidal

echo.
echo Sync completed!
pause
