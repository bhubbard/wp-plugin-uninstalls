-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_terms_page_id', 'woocommerce_myaccount_page_id', 'wafs_plugin_version', 'woocommerce_advanced_free_shipping_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wafs_shipping_method', '_wafs_shipping_method_conditions', 'total_sales', '_was_shipping_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wafs_shipping_method', '_wafs_shipping_method_conditions', 'total_sales', '_was_shipping_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wafs_shipping_method', '_wafs_shipping_method_conditions', 'total_sales', '_was_shipping_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wafs_shipping_method', '_wafs_shipping_method_conditions', 'total_sales', '_was_shipping_method');

