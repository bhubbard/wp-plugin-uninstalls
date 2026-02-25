#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fullworks-anti-spam'
wp option delete 'fullworks_anti_spam_db_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fullworks-anti-spam-utility-data'
wp transient delete 'fullworks_anti_spam_key_name'
wp transient delete 'fullworks_anti_spam_key_value'
wp transient delete 'fwantispam_training_data_obj'
wp transient delete 'fullworks_anti_spam_random_version'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fullworks_anti_spam_daily_admin'
wp cron event delete 'fullworks_anti_spam_daily_training'
wp cron event delete 'fwas_admin_daily'
wp cron event delete 'fullworks_anti_spam_monthly_reports'
wp cron event delete 'fullworks_anti_spam_alerts'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fwas_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fwas_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fwas_upgrade_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fwas_upgrade_notice_dismissed'"
