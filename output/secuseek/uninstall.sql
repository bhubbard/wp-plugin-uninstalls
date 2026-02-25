-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secuseek_last_scan_id', 'SecuseekUserJobScheduleId', 'secuseek_scan_creation_timestamp', 'secuseek_delete_data_on_uninstall', 'secuseek_plugin_do_activation_redirect', 'secuseek_scan_started', 'secuseek_scan_completed');
DELETE FROM wp_options WHERE option_name LIKE 'secuseek_scan_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'secuseek_scan_rate_limit_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('secuseek_scan_api_key', 'secuseek_api_key_last_rotation', 'secuseek_api_key_last_used');
DELETE FROM wp_usermeta WHERE meta_key IN ('secuseek_scan_api_key', 'secuseek_api_key_last_rotation', 'secuseek_api_key_last_used');
DELETE FROM wp_termmeta WHERE meta_key IN ('secuseek_scan_api_key', 'secuseek_api_key_last_rotation', 'secuseek_api_key_last_used');
DELETE FROM wp_commentmeta WHERE meta_key IN ('secuseek_scan_api_key', 'secuseek_api_key_last_rotation', 'secuseek_api_key_last_used');

