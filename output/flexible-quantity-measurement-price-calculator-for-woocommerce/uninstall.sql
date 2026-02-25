-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdesk_helper_options', 'woocommerce_enable_weight', 'woocommerce_weight_unit', 'woocommerce_price_decimal_sep', 'quick_view_trigger', 'woocommerce_stock_format', 'woocommerce_notify_low_stock_amount', 'woocommerce_dimension_unit', 'woocommerce_area_unit', 'woocommerce_volume_unit', 'woocommerce_currency_pos', 'woocommerce_price_trim_zeros', 'sv_wc_plugin_wc_versions');

