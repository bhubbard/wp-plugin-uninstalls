-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cocopopup_plugin_activated', 'cocopopup_excluded_roles');
DELETE FROM wp_options WHERE option_name LIKE 'popupClosureCount_%';
DELETE FROM wp_options WHERE option_name LIKE 'popupVieweCount_%';
DELETE FROM wp_options WHERE option_name LIKE 'popupClosureCount_%';
DELETE FROM wp_options WHERE option_name LIKE 'popupVieweCount_%';

