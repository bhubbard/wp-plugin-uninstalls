#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_diffnavieachpage_nav_menu_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_diffnavieachpage_nav_menu_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_diffnavieachpage_nav_menu_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_diffnavieachpage_nav_menu_id'"
