-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_min_order_amount_value', 'woo_min_order_trigger_value', 'woo_min_order_amount_shop_link', 'woo_min_order_amount_shop_link_text', 'woo_min_order_amount_cart_message', 'woo_min_order_amount_checkout_message');

