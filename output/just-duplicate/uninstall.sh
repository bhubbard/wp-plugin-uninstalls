#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'JUST_DUPLICATE_settings'
wp option delete 'JUST_DUPLICATE_log'

# Clear Cron Jobs
wp cron event delete 'just_duplicate_schedule_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jd_original_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jd_original_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jd_original_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jd_original_post'"
