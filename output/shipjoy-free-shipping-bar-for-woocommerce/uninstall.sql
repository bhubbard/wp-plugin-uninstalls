-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfsbwc_settings', 'sfsbwc_detected_heading_font', 'sfsbwc_options_v1', 'sfsbwc_options', 'sfsbwc_activation_redirect');

