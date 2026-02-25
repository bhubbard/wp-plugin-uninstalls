#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_avatar'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpa_is_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpa_is_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpa_is_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpa_is_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpa_avatar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpa_avatar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpa_avatar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpa_avatar_id'"
