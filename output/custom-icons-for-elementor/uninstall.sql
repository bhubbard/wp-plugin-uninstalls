-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eci_css_timestamp', 'ec_icons_fonts');
DELETE FROM wp_options WHERE option_name LIKE '%elementor_icons_settings';

