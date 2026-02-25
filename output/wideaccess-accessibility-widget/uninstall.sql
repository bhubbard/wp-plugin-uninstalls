-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wideaccess_db_version', 'wideaccess_license_key', 'wideaccess_license_valid', 'wideaccess_license_data');

