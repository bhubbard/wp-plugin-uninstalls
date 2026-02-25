#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sonic_play_selected_theme'
wp option delete 'sonic_play_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sonic_play_source_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sonic_play_source_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sonic_play_source_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sonic_play_source_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sonic_play_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sonic_play_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sonic_play_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sonic_play_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sonic_play_mp3_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sonic_play_mp3_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sonic_play_mp3_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sonic_play_mp3_url'"
