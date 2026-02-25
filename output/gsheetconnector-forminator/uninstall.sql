-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_formntr_info', 'gs_formntr_access_code', 'gs_formntr_verify', 'gs_formntr_token', 'gs_formntr_feeds', 'gs_formntr_sheetId', 'gs_formntr_settings', 'gs_formntr_checkbox_settings', 'gs_formntr_tab_roles_setting', 'blog_publicize', 'active_sitewide_plugins', 'formntr_gs_auth_expired_display_add_interval', 'formntr_gs_auth_expired_close_add_interval', 'formntr_gs_auth_expired_free', 'gs_formntr_manual_setting', 'frmgs_debug_log', 'gs_formntr_sheet_feeds', 'forminatorgsc_api_creds', 'is_new_client_secret_FORMINGSC', 'gs_frmin_token_manual', 'gs_frmin_client_id', 'gs_frmin_secret_id', 'gfgs_sheetId', 'gfgs_feeds', 'frmingf_email_account', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('forminator_forms_feed_details', 'forminator-google-sheet');
DELETE FROM wp_usermeta WHERE meta_key IN ('forminator_forms_feed_details', 'forminator-google-sheet');
DELETE FROM wp_termmeta WHERE meta_key IN ('forminator_forms_feed_details', 'forminator-google-sheet');
DELETE FROM wp_commentmeta WHERE meta_key IN ('forminator_forms_feed_details', 'forminator-google-sheet');

