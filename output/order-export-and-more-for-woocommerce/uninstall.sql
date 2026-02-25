-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals');
DELETE FROM wp_options WHERE option_name LIKE '%_labels';
DELETE FROM wp_options WHERE option_name LIKE '%_option';
DELETE FROM wp_options WHERE option_name LIKE '%_messages';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name');

