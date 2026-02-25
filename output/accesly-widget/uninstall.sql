-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accesly_settings', 'accesly_license_key', 'accesly_license_status', 'accesly_last_license_check', 'accesly_license_message');

