#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srfw_woo_settings'
wp option delete 'srfw_activated_time_woo'
wp option delete 'srfw_notice_hide_woo'
wp option delete 'wprevpro_woo_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_current_db_version'"

# Clear Cron Jobs
wp cron event delete 'srfw_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
