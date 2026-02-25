-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lookcheck_license_key', 'lookcheck_settings', 'lookcheck_api_status');

