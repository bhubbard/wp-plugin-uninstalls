#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adp_redirect_option'
wp option delete 'adp_deleted_post_list'

# Clear Cron Jobs
wp cron event delete 'adp_daily_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_delete_post_time_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_delete_post_time_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_delete_post_time_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_delete_post_time_key'"
