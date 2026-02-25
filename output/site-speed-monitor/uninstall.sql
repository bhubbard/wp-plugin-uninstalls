-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_speed_monitor_options', 'site_speed_monitor_stripped_parameters');

