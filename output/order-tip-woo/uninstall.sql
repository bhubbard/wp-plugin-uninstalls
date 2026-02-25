-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_order_tip_session_type', 'wc_order_tip_enable_alert_remove_tip', 'woocommerce_price_decimal_sep', 'wc_order_tip_remove_confirm_msg', 'wc_order_tip_custom_label', 'wc_order_tip_cash_label', 'wc_order_tip_remove_new_order', 'wc_order_tip_enabled_cart', 'wc_order_tip_enabled_checkout', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id');

