-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_name_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_name_label';
DELETE FROM wp_options WHERE option_name LIKE '%_name_percent';
DELETE FROM wp_options WHERE option_name LIKE '%_fee_type';
DELETE FROM wp_options WHERE option_name LIKE '%_fee_amount';

