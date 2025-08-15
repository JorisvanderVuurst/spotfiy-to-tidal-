# Spotify to Tidal Sync Tool - Windows Setup Guide

## Prerequisites
- Python 3.10 or higher installed
- Spotify account
- Tidal account (fr.iwk.riw.620@gmail.com)

## Configuration

### 1. Spotify App Setup
1. Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
2. Create a new app or use existing one
3. Add the redirect URI: `https://cerlux.vercel.app/callback`
4. Copy your Client ID and Client Secret

### 2. Update Configuration File
The `config.yml` file has been created with your credentials:
- **Client ID**: 4d4796d4dd17406dbcb1d3f70f88b6e1
- **Client Secret**: 402c4ffb40d7486598a509f1bb59dc69
- **Redirect URI**: https://cerlux.vercel.app/callback

**You need to update the username field in config.yml with your Spotify username.**

### 3. Get Your Spotify Username
To find your Spotify username:
1. Open Spotify web player
2. Go to your profile
3. The username is in the URL: `https://open.spotify.com/user/YOUR_USERNAME`
4. Or run: `python get_spotify_username.py` (will open browser for authentication)

## Running the Tool

### Option 1: Using PowerShell Script (Recommended)
```powershell
.\run_sync.ps1
```

### Option 2: Using Batch File
```cmd
run_sync.bat
```

### Option 3: Direct Command
```cmd
python -m spotify_to_tidal
```

## Authentication Process

### First Run - Spotify Authentication
1. The tool will open your browser
2. Log in to Spotify
3. Authorize the application
4. You'll be redirected to your callback URL

### First Run - Tidal Authentication
1. The tool will open your browser for Tidal login
2. Log in with: fr.iwk.riw.620@gmail.com
3. Password: Tommy14102007
4. Authorize the application

### Subsequent Runs
- Authentication tokens are saved in `.session.yml`
- No need to re-authenticate unless tokens expire

## Available Commands

### Sync All Playlists
```cmd
python -m spotify_to_tidal
```

### Sync Specific Playlist
```cmd
python -m spotify_to_tidal --uri PLAYLIST_ID
```

### Sync Only Favorites/Liked Songs
```cmd
python -m spotify_to_tidal --sync-favorites
```

### Use Custom Config File
```cmd
python -m spotify_to_tidal --config custom_config.yml
```

## Troubleshooting

### Common Issues

1. **Authentication Errors**
   - Check your Spotify app redirect URI
   - Ensure credentials are correct in config.yml
   - Delete `.session.yml` to re-authenticate

2. **Python Not Found**
   - Ensure Python is installed and in PATH
   - Try using `python3` instead of `python`

3. **Permission Errors**
   - Run PowerShell as Administrator
   - Check file permissions

4. **Network Issues**
   - Check internet connection
   - Ensure firewall allows the application

### Getting Help
- Check the logs for error messages
- Verify your Spotify and Tidal credentials
- Ensure your redirect URI is correctly set in Spotify Developer Dashboard

## Files Created
- `config.yml` - Your configuration file
- `.session.yml` - Tidal authentication tokens (created after first run)
- `run_sync.bat` - Windows batch file for easy execution
- `run_sync.ps1` - PowerShell script for easy execution
- `get_spotify_username.py` - Helper script to get Spotify username
