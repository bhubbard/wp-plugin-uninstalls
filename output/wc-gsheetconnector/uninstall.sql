-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcgsc_options_migrated', 'wcfgs_debug_log_file', 'wcgsc_access_code', 'wcgsc_verify', 'wcgsc_token', 'wcgsc_feeds', 'wcgsc_sheetId', 'wcgsc_sheet_feeds', 'wcgsc_settings', 'wcgsc_order_states', 'wcgsc_api_free_creds', 'wcgsc_page_roles_setting', 'is_new_client_secret_wcgsc', 'wcgsc_tab_roles_setting', 'wcgsc_email_account', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'WC_GS_info', 'wcgsc_checkbox_settings', 'blog_publicize', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');

