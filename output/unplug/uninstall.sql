-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unplug_settings', 'unplug_settings[enable_logging]', 'unplug_activity_scan_results', 'unplug_license_status', 'unplug_migration_failed', 'unplug_migration_error', 'unplug_location_scan_results', 'unplug_last_scan_time', 'unplug_version', 'unplug_db_config', 'unplug_api_token_encrypted', 'unplug_encryption_key', 'active_sitewide_plugins', 'unplug_queue_max_size', 'unplug_api_token', 'unplug_jwt_public_key', 'unplug_network_settings', 'unplug_network_api_token', 'unplug_activity_scan_results', 'unplug_plugin_list', 'unplug_scan_progress', 'unplug_api_validation', 'unplug_user_tier', 'unplug_queue_status', 'unplug_plugin_inventory', 'unplug_dashboard_refresh');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_file';
DELETE FROM wp_options WHERE option_name LIKE 'unplug_confirmation_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

