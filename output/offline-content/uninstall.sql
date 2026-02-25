-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('offline_network_timeout', 'offline_debug_sw', 'offline_precache', 'wpswmanager_registrations');
DELETE FROM wp_options WHERE option_name LIKE 'wpservefile_files_%';

