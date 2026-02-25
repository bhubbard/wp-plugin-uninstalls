<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('annotatr_version');
delete_site_option('annotatr_version');
delete_option('annotatr_delete_data_on_uninstall');
delete_site_option('annotatr_delete_data_on_uninstall');
delete_option('annotatr_board_settings');
delete_site_option('annotatr_board_settings');
delete_option('annotatr_column_categories');
delete_site_option('annotatr_column_categories');
delete_option('annotatr_roles');
delete_site_option('annotatr_roles');
delete_option('annotatr_developers');
delete_site_option('annotatr_developers');
delete_option('annotatr_test_users');
delete_site_option('annotatr_test_users');
delete_option('annotatr_last_email_error');
delete_site_option('annotatr_last_email_error');
delete_option('annotatr_note_default_settings');
delete_site_option('annotatr_note_default_settings');
delete_option('annotatr_user_colors');
delete_site_option('annotatr_user_colors');
delete_option('annotatr_backup_schedule');
delete_site_option('annotatr_backup_schedule');
delete_option('_transient_timeout_doing_cron');
delete_site_option('_transient_timeout_doing_cron');
delete_option('annotatr_email_settings');
delete_site_option('annotatr_email_settings');
delete_option('annotatr_notification_settings');
delete_site_option('annotatr_notification_settings');
delete_option('annotatr_capture_method_settings');
delete_site_option('annotatr_capture_method_settings');
delete_option('annotatr_db_version');
delete_site_option('annotatr_db_version');
delete_option('annotatr_enable_email_notifications');
delete_site_option('annotatr_enable_email_notifications');
delete_option('annotatr_sent_reminders');
delete_site_option('annotatr_sent_reminders');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('annotatr_show_welcome');
delete_site_transient('annotatr_show_welcome');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('annotatr_daily_email_reminders');
wp_clear_scheduled_hook('annotatr_daily_cleanup_completed_notes');
wp_clear_scheduled_hook('annotatr_automated_backup');
wp_clear_scheduled_hook('annotatr_send_bulk_notifications');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

