#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unity_birthday_setting'
wp option delete 'default_post_edit_rows'

# Clear Cron Jobs
wp cron event delete 'unity_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unity-birth-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unity-birth-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unity-birth-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unity-birth-date'"
