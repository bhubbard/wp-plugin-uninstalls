-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_minimum_order_amount_value', 'wc_minimum_order_cart_notification');

