-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_coinify_settings', 'pgcfw_shared_secret', 'woocommerce_currency', 'woocommerce_shop_page_id', 'woocommerce_checkout_page_id', 'woocommerce_cart_page_id');

