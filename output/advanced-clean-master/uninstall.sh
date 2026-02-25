#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acmt_auto_backup_enabled'
wp option delete 'acmt_backup_retention_days'
wp option delete 'acmt_last_db_optimization'
wp option delete 'acmt_space_saved'
wp option delete 'acmt_last_cleanup_run'
wp option delete 'acmt_install_date'
wp option delete 'acmt_reminder_date'
wp option delete 'acmt_review_dismissed'
wp option delete 'acmt_clean_master_daily'
wp option delete 'acmt_clean_master_weekly'

# Clear Cron Jobs
wp cron event delete 'acmt_daily_event'
wp cron event delete 'acmt_weekly_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
