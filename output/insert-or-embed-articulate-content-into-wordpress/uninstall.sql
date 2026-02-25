-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quiz_embeder_option', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'quiz_five_star_wp_rate_notice_clicked2022', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter', 'quiz_embeder_create_protection_files');

