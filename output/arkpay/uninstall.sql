-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_arkpay_payment_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_data');

