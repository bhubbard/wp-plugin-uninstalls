#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'hametupack-show-player-card'
wp option delete 'hametupack-fb-app-id-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'episode_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'episode_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'episode_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'episode_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'audio_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'audio_file'"
