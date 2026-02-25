#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'YD_WPCSI_last_updated'
wp option delete 'YD_WPCSI_hourly'
wp option delete 'YD_WPCSI_daily'

# Clear Cron Jobs
wp cron event delete 'yd_hourly_event'
wp cron event delete 'yd_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'yd_views_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'yd_views_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'yd_views_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yd_views_%'"
