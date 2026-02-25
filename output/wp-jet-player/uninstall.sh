#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-jet-player-setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-jet-player-setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-jet-player-setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-jet-player-setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-jet-skin-setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-jet-skin-setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-jet-skin-setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-jet-skin-setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-jet-video-setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-jet-video-setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-jet-video-setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-jet-video-setting'"
