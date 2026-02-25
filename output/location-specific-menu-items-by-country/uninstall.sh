#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'csmi_udate_geoip_database'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
