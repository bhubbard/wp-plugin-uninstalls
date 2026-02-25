-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bh_wppm_limit', 'woocommerce_cart_redirect_after_add');
DELETE FROM wp_options WHERE option_name LIKE '%_fields';
DELETE FROM wp_options WHERE option_name LIKE '%_fields';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_price_matrix', '_pm_variation_attributes', 'attribute_price_matrix', '_stock_status', '_pm_order_attributes', '_regular_price', '_sale_price', '_price', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_price_matrix', '_pm_variation_attributes', 'attribute_price_matrix', '_stock_status', '_pm_order_attributes', '_regular_price', '_sale_price', '_price', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_price_matrix', '_pm_variation_attributes', 'attribute_price_matrix', '_stock_status', '_pm_order_attributes', '_regular_price', '_sale_price', '_price', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_price_matrix', '_pm_variation_attributes', 'attribute_price_matrix', '_stock_status', '_pm_order_attributes', '_regular_price', '_sale_price', '_price', '_product_attributes');

