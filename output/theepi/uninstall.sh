#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_permalinks_flushed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eo_menu_minimize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
