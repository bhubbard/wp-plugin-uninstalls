-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_token';
DELETE FROM wp_options WHERE option_name LIKE '%_sale_status';
DELETE FROM wp_options WHERE option_name LIKE '%_refunded_status';
DELETE FROM wp_options WHERE option_name LIKE '%_sync_date';
DELETE FROM wp_options WHERE option_name LIKE '%_api_limitation';
DELETE FROM wp_options WHERE option_name LIKE '%_customer_identity';
DELETE FROM wp_options WHERE option_name LIKE '%_sync_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_api_url';

