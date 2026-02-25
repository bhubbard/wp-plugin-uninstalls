-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zip_code_based_product_price_settings', 'woocommerce_tax_display_shop');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zip_code_based_price_enable', 'zip_code_based_product_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('zip_code_based_price_enable', 'zip_code_based_product_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('zip_code_based_price_enable', 'zip_code_based_product_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zip_code_based_price_enable', 'zip_code_based_product_price');

