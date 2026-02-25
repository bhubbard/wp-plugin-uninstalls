#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dropavifmo_last_scan_timestamp'
wp option delete 'dropavifmo_initial_scan_complete'

# Delete Transients
wp transient delete 'dropavifmo_pending_remote_jobs'
wp transient delete 'dropavifmo_cf_purge_error_msg'
wp transient delete 'dropavifmo_remote_polling_active'

# Clear Cron Jobs
wp cron event delete 'dropavifmo_scan_extra_dirs_hook'
wp cron event delete 'dropavifmo_send_monthly_report_hook'
wp cron event delete 'dropavifmo_remote_polling_hook'
wp cron event delete 'dropavifmo_process_cron_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dropavifmo_conflict_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dropavifmo_conflict_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dropavifmo_conflict_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dropavifmo_conflict_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_error_while_processing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_error_while_processing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_error_while_processing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_error_while_processing'"
