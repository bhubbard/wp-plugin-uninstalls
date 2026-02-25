-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('supercharts_db_version', 'supercharts_license_status', 'supercharts_license_key');

