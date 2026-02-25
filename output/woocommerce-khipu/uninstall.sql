-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_num_decimals', 'woocommerce_hold_stock_minutes', 'woocommerce_manage_stock', 'woocommerce_gateway_khipu_payment_methods', 'woocommerce_khipuregulartransfer_settings', 'woocommerce_khipusimplifiedtransfer_settings');

