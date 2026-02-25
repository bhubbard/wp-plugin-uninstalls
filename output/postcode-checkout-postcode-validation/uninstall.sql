-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcav_enable_validation', 'pcav_license_key', 'pcav_api_key', 'pcav_configured_provider', 'pcav_hide_fields', 'pcav_empty_fields', 'pcav_enable_debugmode', 'pcav_autocomplete_off', 'pcav_housenumber_and_addition_line_2', 'pcav_color_placeholder', 'pcav_color_result');

