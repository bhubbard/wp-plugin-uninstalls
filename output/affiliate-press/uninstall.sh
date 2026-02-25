#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'LDB_Affiliate_Press_Version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ap_feed_%'"
wp option delete 'LDB_Affiliate_Press_Pointers'

# Clear Cron Jobs
wp cron event delete 'AP_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
