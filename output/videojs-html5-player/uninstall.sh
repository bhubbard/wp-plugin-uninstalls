#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'videojs_html5_player_load_scripts_globally'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'videojs-html5-player-custom-field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'videojs-html5-player-custom-field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'videojs-html5-player-custom-field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'videojs-html5-player-custom-field'"
