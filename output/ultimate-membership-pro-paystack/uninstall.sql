-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ump_paystack-secret_key');
DELETE FROM wp_options WHERE option_name LIKE '%-enabled';

