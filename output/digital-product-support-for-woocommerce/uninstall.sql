-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('digital_product_support_for_woocommerce');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('support', '_wcps_up_sell_product_field', 'support_price', '_wcps_up_sell_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('support', '_wcps_up_sell_product_field', 'support_price', '_wcps_up_sell_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('support', '_wcps_up_sell_product_field', 'support_price', '_wcps_up_sell_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('support', '_wcps_up_sell_product_field', 'support_price', '_wcps_up_sell_product');

