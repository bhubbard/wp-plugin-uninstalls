-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myfatoorah_shipping_settings', 'woocommerce_myfatoorah_v2_settings', 'woocommerce_myfatoorah_embedded_settings', 'woocommerce_hold_stock_minutes', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

