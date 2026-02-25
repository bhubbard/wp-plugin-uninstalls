-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_postcode', 'woocommerce_currency', 'ql_woocommerce_cart_redirect_after_add', 'woocommerce_enable_ajax_add_to_cart');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

