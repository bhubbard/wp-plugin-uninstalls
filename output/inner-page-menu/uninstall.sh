#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipm_nav_menu_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipm_nav_menu_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipm_nav_menu_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipm_nav_menu_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ipm_opt_nav_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ipm_opt_nav_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ipm_opt_nav_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ipm_opt_nav_menu'"
