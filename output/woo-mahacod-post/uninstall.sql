-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_require_shipping_address', 'woocommerce_ship_to_same_address', 'woocommerce_enable_order_comments', 'woocommerce_weight_unit', 'woocommerce_calc_shipping', 'woocommerce_cart_page_id', 'woocommerce_enable_shipping_calc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_maha_tracking_code', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_maha_tracking_code', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_maha_tracking_code', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_maha_tracking_code', '_sku');

