#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mpgr_version'
wp option delete 'mpgr_weekly_summary_settings'
wp option delete 'mpgr_reminder_settings'

# Delete Transients
wp transient delete 'mpgr_report_cache'
wp transient delete 'mpgr_summary_cache'

# Clear Cron Jobs
wp cron event delete 'mpgr_run_gift_reminders'
wp cron event delete 'mpgr_run_weekly_summary'
wp cron event delete 'mpgr_cleanup_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
