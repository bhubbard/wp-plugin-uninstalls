#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bg_playlist_options1'
wp option delete 'bg_playlist_options2'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'single_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'single_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'single_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'single_audio'"
