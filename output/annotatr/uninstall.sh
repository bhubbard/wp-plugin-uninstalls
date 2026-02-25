#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'annotatr_version'
wp option delete 'annotatr_delete_data_on_uninstall'
wp option delete 'annotatr_board_settings'
wp option delete 'annotatr_column_categories'
wp option delete 'annotatr_roles'
wp option delete 'annotatr_developers'
wp option delete 'annotatr_test_users'
wp option delete 'annotatr_last_email_error'
wp option delete 'annotatr_note_default_settings'
wp option delete 'annotatr_user_colors'
wp option delete 'annotatr_backup_schedule'
wp option delete '_transient_timeout_doing_cron'
wp option delete 'annotatr_email_settings'
wp option delete 'annotatr_notification_settings'
wp option delete 'annotatr_capture_method_settings'
wp option delete 'annotatr_db_version'
wp option delete 'annotatr_enable_email_notifications'
wp option delete 'annotatr_sent_reminders'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'annotatr_show_welcome'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'annotatr_daily_email_reminders'
wp cron event delete 'annotatr_daily_cleanup_completed_notes'
wp cron event delete 'annotatr_automated_backup'
wp cron event delete 'annotatr_send_bulk_notifications'
wp cron event delete 'fs_debug_turn_off_logging_hook'

