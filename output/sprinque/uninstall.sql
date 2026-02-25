-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sprinque_seller', 'woocommerce_myaccount_page_id', 'sprinque_available_countries', 'woocommerce_wpm_srinque_pay_settings', 'logs_sprinque', 'sprinque_available_payment_terms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('merchant_buyer_id', 'buyer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('merchant_buyer_id', 'buyer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('merchant_buyer_id', 'buyer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('merchant_buyer_id', 'buyer_id');

