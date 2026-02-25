#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_menu_add_warning_migrate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_menu_add_warning_migrate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_menu_add_warning_migrate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_menu_add_warning_migrate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_menu_course_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_menu_course_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_menu_course_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_menu_course_ignore_notice'"
