-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('k1fach_api_identifier', 'k1fach_enable_button', 'k1fach_jwt_duration', 'k1fach_button_alignment', 'k1fach_api_key');

