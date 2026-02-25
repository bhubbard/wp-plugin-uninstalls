-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_coinremitterpayments_settings', 'woocommerce_version', 'woocommerce_currency_pos', 'currency_value');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_order_crypto_price', '_order_crypto_coin');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_order_crypto_price', '_order_crypto_coin');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_order_crypto_price', '_order_crypto_coin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_order_crypto_price', '_order_crypto_coin');

