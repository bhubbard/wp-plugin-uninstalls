#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'merlic_playlist_player_title'
wp option delete 'mp3_playlist_version'
wp option delete 'merlic_playlist_version'
wp option delete 'merlic_playlist_widget_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
