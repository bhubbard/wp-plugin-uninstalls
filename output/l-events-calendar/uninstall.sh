#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lec_name_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
