-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('persistent_login_feature_flags', 'persistent_login_options', 'persistent_login_notification_email_subject', 'persistent_login_user_count', 'persistent_login_dashboard_stats', 'persistent_login_notification_email_template', 'persistent_login_db_version', 'persistent_login_options_user_access', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'persistent_login_user_count_temporary', 'persistent_login_user_count_running', 'persistent_login_user_count_current_role', 'persistent_login_last_count', 'persistent_login_allowed_roles_reference', 'persistent_login_user_count_offset', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens', 'persistent_login_remember_me');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens', 'persistent_login_remember_me');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens', 'persistent_login_remember_me');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens', 'persistent_login_remember_me');

