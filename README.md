#  Spotify to Tidal Sync

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/spotify-to-tidal.git
cd spotify-to-tidal

# Install the package
python3 -m pip install -e .
```

### Setup

1. **Copy the configuration file:**
   ```bash
   cp example_config.yml config.yml
   ```

2. **Set up Spotify API credentials:**
   - Go to [Spotify Developer Dashboard](https://developer.spotify.com/documentation/general/guides/authorization/app-settings/)
   - Create a new application
   - Copy your `client_id` and `client_secret`
   - Add `http://localhost:8888/callback` to your Redirect URIs
   - you can also use this redirect url https://cerlux.vercel.app/callback

3. **Configure the tool:**
   - Edit `config.yml` with your Spotify credentials
   - Add your Spotify username

### Usage

```bash
# Sync all playlists
spotify_to_tidal

# Sync a specific playlist
spotify_to_tidal --uri spotify:playlist:1ABCDEqsABCD6EaABCDa0a

# Sync only your liked songs
spotify_to_tidal --sync-favorites
```

## �� Configuration

The `config.yml` file allows you to customize various aspects of the sync process:

```yaml
spotify:
  client_id: your_client_id
  client_secret: your_client_secret
  username: your_spotify_username
  redirect_uri: http://localhost:8888/callback
  open_browser: true

# Sync specific playlists
sync_playlists:
  - spotify_id: 1ABCDEqsABCD6EaABCDa0a
    tidal_id: a0b1234-0a1b-012a-abcd-a1b234c5d6d7

# Exclude specific playlists
excluded_playlists:
  - spotify:playlist:1ABCDEqsABCD6EaABCDa0a

# Performance settings
max_concurrency: 10
rate_limit: 10
```

### Prerequisites

- Python 3.10 or higher
- Spotify Developer Account
- Tidal Account

### Running Tests

```bash
# Install development dependencies
pip install -e ".[dev]"

```

