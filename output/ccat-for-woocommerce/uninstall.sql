-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_access_token');
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_shipping_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_invoice_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_test_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_test_chk_code';
DELETE FROM wp_options WHERE option_name LIKE '%_chk_code';
DELETE FROM wp_options WHERE option_name LIKE '%_test_merchant_id';
DELETE FROM wp_options WHERE option_name LIKE '%_merchant_id';
DELETE FROM wp_options WHERE option_name LIKE '%_test_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_migration_completed';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_name';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_tel';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_mobile';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_address';
DELETE FROM wp_options WHERE option_name LIKE '%api_access_token';

