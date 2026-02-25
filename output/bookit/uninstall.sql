-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'bookit_styles_version', 'stm_bookit_appointment_created', 'bookit_feedback_added', 'bookit_import_file', 'bookit_settings', 'bookit_version', 'bookit_db_version', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter', 'stm_bookit_single_notice_setting', 'bookit_categories', 'bookit_services', 'stm_bookit_notice_setting');

