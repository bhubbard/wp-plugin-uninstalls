-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pjjuh_version', 'pjjuh_shortcode_settings', 'pjjuh_settings');

