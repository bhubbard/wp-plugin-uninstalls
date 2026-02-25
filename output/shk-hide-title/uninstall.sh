#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'st_hide_title_check_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'st_hide_title_check_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'st_hide_title_check_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'st_hide_title_check_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'st_hide_breadcrumb_check_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'st_hide_breadcrumb_check_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'st_hide_breadcrumb_check_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'st_hide_breadcrumb_check_option'"
