-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uvs_api_system_key', 'uvs_current_value', 'uvs_last_value', 'uvs_last_value_updated_at', 'uvs_license_key', 'uvs_first_activation', 'uvs_uuid', 'uvs_settings_updated_timestamp', 'uvs_version', 'uvs_selected_language');

