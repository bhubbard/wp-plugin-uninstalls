-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency_pos', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'woocommerce_price_thousand_sep');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('c4d_woo_bundle');
DELETE FROM wp_usermeta WHERE meta_key IN ('c4d_woo_bundle');
DELETE FROM wp_termmeta WHERE meta_key IN ('c4d_woo_bundle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('c4d_woo_bundle');

