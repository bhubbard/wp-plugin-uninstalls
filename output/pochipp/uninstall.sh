#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'pochipp_auto_update_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pochipp_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pochipp_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pochipp_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pochipp_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'used_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'used_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'used_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'used_count'"
