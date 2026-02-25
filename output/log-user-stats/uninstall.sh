#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'logged_in_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'logged_in_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'logged_in_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'logged_in_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'average_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'average_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'average_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'average_time'"
