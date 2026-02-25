-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('empik_last_export_file_name', 'empik_woocommerce_set_export_logistic_class', 'empik_woocommerce_set_export_product_states', 'empik_woocommerce_set_export_offers_delivery_time_control', 'empik_woocommerce_set_export_offers_from', 'empik_woocommerce_set_export_offers_stock_control', 'empik_export_offers_is_running', 'woocommerce_custom_orders_table_enabled', 'empik_import_orders_is_running', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'empik_shipping_mapping', 'empik_woocommerce_set_cron_type', 'empik_woocommerce_set_api_key', 'empik_export_products_is_running', 'empik_woocommerce_set_export_offers_id_field', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_is_registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_empik_delivery_time', '_empik_price', '_empik_price_sale', '_empik_sale_date_start', '_empik_sale_date_end', '_empik_logistic_klass', '_empik_product_state', '_empik_product_state_all_variants', '_empik_carrier_code', '_empik_carrier_url', '_empik_carrier_tracking_number', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_empik_delivery_time', '_empik_price', '_empik_price_sale', '_empik_sale_date_start', '_empik_sale_date_end', '_empik_logistic_klass', '_empik_product_state', '_empik_product_state_all_variants', '_empik_carrier_code', '_empik_carrier_url', '_empik_carrier_tracking_number', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_empik_delivery_time', '_empik_price', '_empik_price_sale', '_empik_sale_date_start', '_empik_sale_date_end', '_empik_logistic_klass', '_empik_product_state', '_empik_product_state_all_variants', '_empik_carrier_code', '_empik_carrier_url', '_empik_carrier_tracking_number', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_empik_delivery_time', '_empik_price', '_empik_price_sale', '_empik_sale_date_start', '_empik_sale_date_end', '_empik_logistic_klass', '_empik_product_state', '_empik_product_state_all_variants', '_empik_carrier_code', '_empik_carrier_url', '_empik_carrier_tracking_number', '_regular_price');

