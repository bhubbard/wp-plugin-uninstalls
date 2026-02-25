-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_rocket_settings', 'complianz_options_custom-scripts');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

