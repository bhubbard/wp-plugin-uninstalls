-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_formidable_page_roles_setting', 'frmgsc_debug_log_file', 'gscfrmdform_manual_setting', 'frmgsc_gs_token', 'frmgsc_gs_access_code', 'gscfrmdform_verify', 'gscfrmdform_client_id', 'gscfrmdform_secret_id', 'gscfrmdform_access_manual_code', 'gscfrmdform_token_manual', 'gscfrmdform_info', 'blog_publicize', 'active_sitewide_plugins', 'formidable_form_gs_auth_expired_display_add_interval', 'formidable_form_gs_auth_expired_close_add_interval', 'formidable_form_gs_auth_expired_free', 'formidablegsc_api_creds', 'is_new_client_secret_frmgsc', 'gscfrmd_email_account', 'frmgsc_email_account_manual', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'gs_formidable_success_message', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gscfrm_form_feeds', 'gscfrm_form_feeds_sheet_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('gscfrm_form_feeds', 'gscfrm_form_feeds_sheet_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('gscfrm_form_feeds', 'gscfrm_form_feeds_sheet_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gscfrm_form_feeds', 'gscfrm_form_feeds_sheet_settings');

