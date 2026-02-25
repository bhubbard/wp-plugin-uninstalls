-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfts_settings_value', 'shortcode_default_rectangle', 'shortcode_default_wide', 'shortcode_default_narrow', 'shortcode_default_dynamic-width');

