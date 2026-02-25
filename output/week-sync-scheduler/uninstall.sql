-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weekgrfo_settings', 'weekgrfo_specific_settings', 'weekgrfo_logs');

