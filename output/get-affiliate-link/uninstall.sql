-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gal_license_key');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

