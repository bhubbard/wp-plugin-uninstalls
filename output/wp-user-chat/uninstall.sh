#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WPCHT_user_mood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WPCHT_user_mood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WPCHT_user_mood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WPCHT_user_mood'"
