-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_manage_stock', 'woocommerce_notify_low_stock_amount', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

