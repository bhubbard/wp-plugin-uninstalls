-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('annotatr_version', 'annotatr_delete_data_on_uninstall', 'annotatr_board_settings', 'annotatr_column_categories', 'annotatr_roles', 'annotatr_developers', 'annotatr_test_users', 'annotatr_last_email_error', 'annotatr_note_default_settings', 'annotatr_user_colors', 'annotatr_backup_schedule', '_transient_timeout_doing_cron', 'annotatr_email_settings', 'annotatr_notification_settings', 'annotatr_capture_method_settings', 'annotatr_db_version', 'annotatr_enable_email_notifications', 'annotatr_sent_reminders', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'annotatr_show_welcome', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

