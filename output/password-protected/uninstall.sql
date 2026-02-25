-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('password_protected_status', 'password_protected_feeds', 'password_protected_rest', 'password_protected_administrators', 'password_protected_users', 'password_protected_password', 'password_protected_allowed_ip_addresses', 'password_protected_remember_me', 'password_protected_remember_me_lifetime', 'password_protected_text_above_password', 'password_protected_text_below_password', 'password_protected_use_transient', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pp_activity_logs_db_updated', 'password_protected_1.5_update_database', 'password_protected_activity_report_enable', 'password_protected_version', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

