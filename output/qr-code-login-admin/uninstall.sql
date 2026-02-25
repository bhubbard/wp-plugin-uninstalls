-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('QRLA_time', 'QRLA_time_limit', 'QRLA_code', 'QRLA_random_string');

