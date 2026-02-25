-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sima_eucookie', 'ecl_version_number', 'sima_version_number');

