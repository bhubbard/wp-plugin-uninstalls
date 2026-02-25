-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cg_license_status', 'cg_plugin_options', 'cg_plugin_version', 'cg_recent_courier_checks', 'cg_api_cache', 'cg_last_synced');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'cg_courier_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cg_success_ratio_data', '_cg_device_fingerprint', '_cg_device_user_agent', '_customer_ip_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cg_success_ratio_data', '_cg_device_fingerprint', '_cg_device_user_agent', '_customer_ip_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cg_success_ratio_data', '_cg_device_fingerprint', '_cg_device_user_agent', '_customer_ip_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cg_success_ratio_data', '_cg_device_fingerprint', '_cg_device_user_agent', '_customer_ip_address');

