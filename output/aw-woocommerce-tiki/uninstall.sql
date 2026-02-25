-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_tiki_shipping_license_code', 'woocommerce_weight_unit', 'woocommerce_shipping_method_selection_priority', 'woocommerce_tiki_shipping_settings', 'woocommerce_price_num_decimals');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_settings_backup';

