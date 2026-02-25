-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rx_weatherbot_settings', 'rx_weatherbot_options');

