-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', '_zoho_config', '_zoho_auth_infos', '_zcrm_oauthtokens', '_zoho_auth_token_info', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('w3s-cf7-zoho_cf7_form', 'w3s-cf7-zoho_zoho_module', 'integration_enable_disable', 'w3s_cf7_fields_repeat_group', 'w3s-cf7-zoho_is_upsert', 'w3s-cf7-zoho_enable_file', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('w3s-cf7-zoho_cf7_form', 'w3s-cf7-zoho_zoho_module', 'integration_enable_disable', 'w3s_cf7_fields_repeat_group', 'w3s-cf7-zoho_is_upsert', 'w3s-cf7-zoho_enable_file', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('w3s-cf7-zoho_cf7_form', 'w3s-cf7-zoho_zoho_module', 'integration_enable_disable', 'w3s_cf7_fields_repeat_group', 'w3s-cf7-zoho_is_upsert', 'w3s-cf7-zoho_enable_file', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('w3s-cf7-zoho_cf7_form', 'w3s-cf7-zoho_zoho_module', 'integration_enable_disable', 'w3s_cf7_fields_repeat_group', 'w3s-cf7-zoho_is_upsert', 'w3s-cf7-zoho_enable_file', '_wp_page_template');

