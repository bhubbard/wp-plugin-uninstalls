-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thermometer_options', 'thermometer_style', 'therm_activation_notice');

