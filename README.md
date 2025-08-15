# Spotify to Tidal Sync

### Prerequisites

- **Python 3.10 or higher** installed on your system
- **Spotify account** 
- **Tidal account** 

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/spotify-to-tidal.git
   cd spotify-to-tidal
   ```

2. **Install the package:**
   ```bash
   python -m pip install -e .
   ```

### Setup

#### 1. Spotify App Configuration

1. Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard)
2. Create a new app or use an existing one
3. Add the redirect URI: `https://cerlux.vercel.app/callback`
4. Copy your **Client ID** and **Client Secret**

#### 2. Configuration File

The `config.yml` file has been pre-configured with only the redirect url:
- **Client ID**: your_client_id
- **Client Secret**: your_client_secret
- **Redirect URI**: https://cerlux.vercel.app/callback



#### 3. Get Your Spotify Username

**Option A - Web Player:**
1. Open [Spotify Web Player](https://open.spotify.com)
2. Go to your profile
3. The username is in the URL: `https://open.spotify.com/user/YOUR_USERNAME`

**Option B - Helper Script:**
```bash
python get_spotify_username.py
```

### Usage

#### Option 1: Using PowerShell Script (Recommended)
```powershell
.\run_sync.ps1
```

#### Option 2: Using Batch File
```cmd
run_sync.bat
```

#### Option 3: Direct Command
```cmd
python -m spotify_to_tidal
```

#### Available Commands

**Sync all playlists:**
```cmd
python -m spotify_to_tidal
```

**Sync a specific playlist:**
```cmd
python -m spotify_to_tidal --uri PLAYLIST_ID
```

**Sync only your liked songs:**
```cmd
python -m spotify_to_tidal --sync-favorites
```

**Use custom config file:**
```cmd
python -m spotify_to_tidal --config custom_config.yml
```

## 🔐 Authentication Process

### First Run - Spotify Authentication
1. The tool will open your browser automatically
2. Log in to your Spotify account
3. Authorize the application
4. You'll be redirected to the callback URL

### First Run - Tidal Authentication
1. The tool will open your browser for Tidal login
2. Log in with: `your_tidal_user`
3. Password: `your_password`
4. Authorize the application

### Subsequent Runs
- Authentication tokens are automatically saved in `.session.yml`
- No need to re-authenticate unless tokens expire
- Simply run the tool again for future syncs

## ⚙️ Configuration

The `config.yml` file allows you to customize various aspects of the sync process:

```yaml
spotify:
  client_id: your_client_id
  client_secret: your_client_secret
  username: YOUR_SPOTIFY_USERNAME  # ⚠️ Update this!
  redirect_uri: https://cerlux.vercel.app/callback
  open_browser: true

# Sync specific playlists (optional)
sync_playlists:
  - spotify_id: 1ABCDEqsABCD6EaABCDa0a
    tidal_id: a0b1234-0a1b-012a-abcd-a1b234c5d6d7

# Exclude specific playlists (optional)
excluded_playlists:
  - spotify:playlist:1ABCDEqsABCD6EaABCDa0a

# Performance settings
max_concurrency: 10
rate_limit: 10
sync_favorites_default: true
```
## credits
this was taken from this repo but edited to a windows version
credits: 'https://github.com/spotify2tidal/spotify_to_tidal'

