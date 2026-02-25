#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allow_deletion'
wp option delete 'inactive_days'

# Clear Cron Jobs
wp cron event delete 'cll_cron_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_user_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_user_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_user_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_user_login'"
