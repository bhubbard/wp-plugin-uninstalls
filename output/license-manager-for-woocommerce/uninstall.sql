-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lmfwc_settings_general', 'lmfwc_db_version', 'lmfwc_settings_tools', 'lmfwc_settings_woocommerce', 'dlm_settings_general', 'dlm_settings_woocommerce', 'lmfwc_table_check', 'lmfwc_settings', 'lmfwc_settings_order_status', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'lmfwc_api_key', 'lmfwc_consumer_key', 'lmfwc_error', 'max_order_pages', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'lmfwc_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lmfwc_pro_notice_dismisseds');
DELETE FROM wp_usermeta WHERE meta_key IN ('lmfwc_pro_notice_dismisseds');
DELETE FROM wp_termmeta WHERE meta_key IN ('lmfwc_pro_notice_dismisseds');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lmfwc_pro_notice_dismisseds');

