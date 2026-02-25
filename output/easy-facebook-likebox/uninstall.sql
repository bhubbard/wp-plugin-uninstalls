-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fta_settings', 'fta_supported', 'fta_row_layout_notice', 'efbl_skin_id', 'efbl_account_id', 'efbl_installDate', 'efbl_version', 'efbl_version_type', 'mif_skin_id', 'mif_account_id', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'espf_plugin_info', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'efbl_skin_%';
DELETE FROM wp_options WHERE option_name LIKE 'mif_skin_%';
DELETE FROM wp_options WHERE option_name LIKE 'esf_insta_logo_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('layout');

