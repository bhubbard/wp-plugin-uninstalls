-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%environment';
DELETE FROM wp_options WHERE option_name LIKE '%test_publishable_key';
DELETE FROM wp_options WHERE option_name LIKE '%test_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%publishable_key';
DELETE FROM wp_options WHERE option_name LIKE '%secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%filter_countries';
DELETE FROM wp_options WHERE option_name LIKE '%default_country';
DELETE FROM wp_options WHERE option_name LIKE '%payment_description';
DELETE FROM wp_options WHERE option_name LIKE '%tax_rate';
DELETE FROM wp_options WHERE option_name LIKE '%charge_shipping';
DELETE FROM wp_options WHERE option_name LIKE '%fixed_shipping_fee';
DELETE FROM wp_options WHERE option_name LIKE '%varied_shipping_fee';
DELETE FROM wp_options WHERE option_name LIKE '%success_header';
DELETE FROM wp_options WHERE option_name LIKE '%success_message';
DELETE FROM wp_options WHERE option_name LIKE '%error_header';
DELETE FROM wp_options WHERE option_name LIKE '%error_message';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsc_order_detail', 'wsc_order_shipping', 'wsc_order_summary', 'wsc_order_name', 'wsc_order_email', 'wsc_order_amount', 'wsc_order_currency', 'wsc_order_live');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsc_order_detail', 'wsc_order_shipping', 'wsc_order_summary', 'wsc_order_name', 'wsc_order_email', 'wsc_order_amount', 'wsc_order_currency', 'wsc_order_live');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsc_order_detail', 'wsc_order_shipping', 'wsc_order_summary', 'wsc_order_name', 'wsc_order_email', 'wsc_order_amount', 'wsc_order_currency', 'wsc_order_live');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsc_order_detail', 'wsc_order_shipping', 'wsc_order_summary', 'wsc_order_name', 'wsc_order_email', 'wsc_order_amount', 'wsc_order_currency', 'wsc_order_live');

