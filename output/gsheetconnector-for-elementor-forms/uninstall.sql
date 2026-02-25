-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'gsc_create_sheet_elementor_settings', 'elefgs_sheetId', 'elefgs_tabsId', 'gsc_elementor_settings', 'elefgs_info', 'elefgs_access_code', 'elefgs_verify', 'elefgs_token', 'blog_publicize', 'ele_gs_debug_log_file', 'elefgs_feeds', 'elefgs_access_manual_code', 'elefgs_token_manual', 'Elegsc_api_creds', 'is_new_client_secret_elefgscfree', 'elefgs_manual_setting', 'elefgs_client_id', 'elefgs_secret_id', 'gsc_elementor_email_account', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gscele_form_feeds', 'gs_elementor_settings', 'gscele_sheet_header', '_elementor_data', 'gscele_sheet_header_names', 'gscele_sort_order', '_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('gscele_form_feeds', 'gs_elementor_settings', 'gscele_sheet_header', '_elementor_data', 'gscele_sheet_header_names', 'gscele_sort_order', '_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('gscele_form_feeds', 'gs_elementor_settings', 'gscele_sheet_header', '_elementor_data', 'gscele_sheet_header_names', 'gscele_sort_order', '_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gscele_form_feeds', 'gs_elementor_settings', 'gscele_sheet_header', '_elementor_data', 'gscele_sheet_header_names', 'gscele_sort_order', '_elementor_template_type');

