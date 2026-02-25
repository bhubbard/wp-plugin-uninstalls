-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pay_page_id', 'woocommerce_wompi_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', '_billing_email', '_billing_address_index', '_billing_first_name', '_billing_last_name', '_billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', '_billing_email', '_billing_address_index', '_billing_first_name', '_billing_last_name', '_billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', '_billing_email', '_billing_address_index', '_billing_first_name', '_billing_last_name', '_billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', '_billing_email', '_billing_address_index', '_billing_first_name', '_billing_last_name', '_billing_phone');

