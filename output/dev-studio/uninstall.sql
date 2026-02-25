-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_api_enabled', 'woocommerce_enable_coupons', 'woocommerce_enable_reviews', 'woocommerce_enable_shipping_calc', 'dev-studio_options');

