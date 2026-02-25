-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_smsrunot_enable', 'wp_smsrunot_apikey', 'wp_smsrunot_number');

