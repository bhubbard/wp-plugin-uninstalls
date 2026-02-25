#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%responsive_breakpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_locations'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icons'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%submenu_display_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%submenu_display_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%submenu_display_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%submenu_display_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%grid_system'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%grid_system'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%grid_system'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%grid_system'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%item_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%item_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%item_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%item_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%active_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%active_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%active_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%active_tab'"
