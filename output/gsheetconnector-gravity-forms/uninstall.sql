-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfgs_feeds', 'gfgs_token', 'gfgs_verify', 'active_sitewide_plugins', 'gravityforms_gs_page_roles_setting', 'gfgs_info', 'gfgs_access_code', 'gravityforms_gs_tab_roles_setting', 'blog_publicize', 'gfgs_sheetId', 'gf_gs_debug_log_file', 'gravityforms_gs_auth_expired_display_add_interval', 'gravityforms_gs_auth_expired_close_add_interval', 'gravityforms_gs_auth_expired_free', 'Gfgsc_api_creds', 'gravityforms_gs_uninstall_plugin_settings', 'gravityforms_manual_setting', 'is_new_client_secret_gravityformsgsc', 'gfgs_email_account', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gfgs_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('gfgs_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('gfgs_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gfgs_settings');

