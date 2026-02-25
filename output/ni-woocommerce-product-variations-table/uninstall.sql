-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock_amount', 'nipv_setting_option', 'woocommerce_cart_redirect_after_add');

