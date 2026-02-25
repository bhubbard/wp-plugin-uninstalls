-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ht_cf7extensions_diagnostic_data_agreed', 'ht_cf7extensions_diagnostic_data_notice', 'extcf7_delete_data_fetch_cache', 'htcf7ext_conditional_field_module_settings', 'htcf7ext_redirection_extension_module_settings', 'extcf7_db_table_alter_status', 'htcf7ext_opt', 'htcf7ext_opt_extensions', 'extcf7-notice-id-diagnostic-data', 'extcf7_unread_count');
DELETE FROM wp_options WHERE option_name LIKE 'extcf7_mcmp_%';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('extcf7_conditional_options', 'extcf7_range_slider', 'extcf7_redirect_options', 'extcf7_signature');
DELETE FROM wp_usermeta WHERE meta_key IN ('extcf7_conditional_options', 'extcf7_range_slider', 'extcf7_redirect_options', 'extcf7_signature');
DELETE FROM wp_termmeta WHERE meta_key IN ('extcf7_conditional_options', 'extcf7_range_slider', 'extcf7_redirect_options', 'extcf7_signature');
DELETE FROM wp_commentmeta WHERE meta_key IN ('extcf7_conditional_options', 'extcf7_range_slider', 'extcf7_redirect_options', 'extcf7_signature');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'extcf7_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'extcf7_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'extcf7_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'extcf7_%';

