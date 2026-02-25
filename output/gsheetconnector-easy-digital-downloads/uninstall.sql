-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'gs_edd_info', 'gs_edd_access_code', 'gs_edd_verify', 'gs_edd_token', 'gs_edd_feeds', 'gs_edd_sheetId', 'gs_edd_settings', 'gs_edd_checkbox_settings', 'gs_edd_tab_roles_setting', 'gs_edd_license_key', 'gs_license_status', 'gs_license_key', 'gs_edd_token_manual', 'blog_publicize', 'gs_edd_sheet_feeds', 'edd_gs_debug_log_file', 'gs_edd_manual_setting', 'gs_edd_access_manual_code', 'gs_edd_client_id', 'gs_edd_secret_id', 'gscwc_order_states', 'gs_edd_page_roles_setting', 'is_new_client_secret_eddgsc', 'wpgs_email_account_edd', 'wpgs_email_account_edd_manual', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

