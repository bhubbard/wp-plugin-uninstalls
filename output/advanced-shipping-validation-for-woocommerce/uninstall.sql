-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_woocommerce_advanced_shipping_validation', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_terms_page_id', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_conditions', '_message', 'total_sales', '_was_shipping_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_conditions', '_message', 'total_sales', '_was_shipping_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_conditions', '_message', 'total_sales', '_was_shipping_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_conditions', '_message', 'total_sales', '_was_shipping_method');

