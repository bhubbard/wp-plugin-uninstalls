-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_conpay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_conpay_payment_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_conpay_payment_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_conpay_payment_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_conpay_payment_data');

