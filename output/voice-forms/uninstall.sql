-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vf_api_system_key', 'vf_current_value', 'vf_last_value', 'vf_last_value_updated_at', 'vf_license_key', 'vf_first_activation', 'vf_uuid', 'vf_settings_updated_timestamp', 'vf_version', 'vf_selected_language');

