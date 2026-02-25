-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yoco_wc_payment_gateway_version', 'woocommerce_class_yoco_wc_payment_gateway_settings', 'yoco_orders_pending_payment', 'woocommerce_hold_stock_minutes', 'yoco_webhook_processing');
DELETE FROM wp_options WHERE option_name LIKE 'yoco_order_processing_%';

