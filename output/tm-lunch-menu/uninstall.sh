#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tm_lunch_menu_settings'
wp option delete 'tm_lunch_menu_save_data'
wp option delete 'tm_lunch_menu_ver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tm_lunch_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tm_lunch_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tm_lunch_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tm_lunch_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tm_lunch_menu_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tm_lunch_menu_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tm_lunch_menu_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tm_lunch_menu_day'"
