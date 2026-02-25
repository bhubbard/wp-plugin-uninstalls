#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'dailybrief_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exxo_wp_permlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exxo_wp_permlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exxo_wp_permlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exxo_wp_permlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exxo_wp_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exxo_wp_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exxo_wp_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exxo_wp_author'"
