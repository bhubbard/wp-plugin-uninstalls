-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_phone_is_registered_1', 'wp_phone_registration_data', 'wp_phone_number');

