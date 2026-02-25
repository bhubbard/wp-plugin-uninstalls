-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpf_gs_debug_log_file', 'wpform_gs_access_code', 'wpform_gs_verify', 'wpform_GS_info', 'wpform_gs_token', 'wpform_uninstall', 'blog_publicize', 'wpform_gs_auth_expired_display_add_interval', 'wpform_gs_auth_expired_close_add_interval', 'wpform_gs_auth_expired_free', 'Wpformsgsc_api_creds', 'wpforms_manual_setting', 'is_new_client_secret_wpformsgsc', 'wpforms_gs_upgrade_notice_interval', 'wpforms_gs_close_upgrade_notice', 'wpforms_gs_sheetId', 'wpgs_email_account', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'wpform_gs_upgrade_redirect', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpform_gs_settings', 'wpform_gs_old_settings', 'wpform_gs_settings_new');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpform_gs_settings', 'wpform_gs_old_settings', 'wpform_gs_settings_new');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpform_gs_settings', 'wpform_gs_old_settings', 'wpform_gs_settings_new');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpform_gs_settings', 'wpform_gs_old_settings', 'wpform_gs_settings_new');

