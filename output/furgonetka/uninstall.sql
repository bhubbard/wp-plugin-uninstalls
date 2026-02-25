-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_customer_address', 'woocommerce_default_country', 'woocommerce_ship_to_destination', 'woocommerce_hold_stock_minutes', 'woocommerce_manage_stock', 'rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE '%_sender_name';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_companyName';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_postCode';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_city';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_street';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_email';
DELETE FROM wp_options WHERE option_name LIKE '%_sender_telephone';
DELETE FROM wp_options WHERE option_name LIKE '%_cod_iban';
DELETE FROM wp_options WHERE option_name LIKE '%_cod_accountOwner';

