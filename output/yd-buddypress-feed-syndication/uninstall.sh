#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yd-buddypress-feed-syndication'
wp option delete 'YD_P_hourly'
wp option delete 'YD_P_daily'
wp option delete 'YD_P_last_action'

# Clear Cron Jobs
wp cron event delete 'yd_hourly_event'
wp cron event delete 'yd_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yd_syndications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yd_syndications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yd_syndications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yd_syndications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yd_syndications_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yd_syndications_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yd_syndications_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yd_syndications_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yd_syndications_refresh'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yd_syndications_refresh'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yd_syndications_refresh'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yd_syndications_refresh'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yd_syndications_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yd_syndications_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yd_syndications_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yd_syndications_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yd_syndications_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yd_syndications_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yd_syndications_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yd_syndications_updated'"
