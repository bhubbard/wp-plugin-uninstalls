-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_free_shipping_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_notify_low_stock_amount', 'woocommerce_notify_no_stock_amount', 'adk_notification');

