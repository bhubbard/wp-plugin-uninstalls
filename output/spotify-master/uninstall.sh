#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spotify_master_load_size_basic'
wp option delete 'spotify_master_load_size_detailed'
wp option delete 'spotify_master_load_theme_light'
wp option delete 'spotify_master_load_theme_dark'
wp option delete 'spotifybutton_size_choice'
wp option delete 'spotifybutton_theme_choice'
wp option delete 'tsm_quote'

