-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vswc_api_system_key', 'vswc_current_value', 'vswc_last_value', 'vswc_last_value_updated_at', 'vswc_license_key', 'vswc_first_activation', 'vswc_uuid', 'vswc_settings_updated_timestamp', 'vswc_version', 'vswc_selected_language');

