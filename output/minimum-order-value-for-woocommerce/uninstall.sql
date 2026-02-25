-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_min_order_value', 'woocommerce_min_order_message_checkout', 'woocommerce_min_order_message_cart', 'woocommerce_min_order_exclude_products', 'woocommerce_min_order_exclude_categories');

