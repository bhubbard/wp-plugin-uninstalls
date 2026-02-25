-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fems_options', 'FireEMS', 'fireEMS', 'fems_license_key');

