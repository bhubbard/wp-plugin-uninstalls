-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'is_new_client_secret_cf7gscfree', 'gs_token', 'gs_verify', 'cf7gs_auth_expired_free', 'gs_debug_log_file', 'google_sheet_info_free', 'gs_access_code', 'gs_display_add_interval', 'gs_close_add_interval', 'gs_auth_expired_display_add_interval', 'gs_auth_expired_close_add_interval', 'blog_publicize', 'gs_upgrade_notice_interval', 'gs_close_upgrade_notice', 'cf7gsc_free_api_creds', 'cf7gf_email_account', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'cf7gs_upgrade_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gs_settings', 'gs_map_mail_tags', '_form', 'gs_map_custom_mail_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('gs_settings', 'gs_map_mail_tags', '_form', 'gs_map_custom_mail_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('gs_settings', 'gs_map_mail_tags', '_form', 'gs_map_custom_mail_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gs_settings', 'gs_map_mail_tags', '_form', 'gs_map_custom_mail_tags');

