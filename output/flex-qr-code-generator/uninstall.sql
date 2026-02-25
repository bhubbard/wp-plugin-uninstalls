-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flexqr_db_version', 'flexqr_settings', 'flexqr_license_key');

