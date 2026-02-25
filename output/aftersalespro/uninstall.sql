-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aftersalesprogr_api_token', 'woocommerce_version', 'woocommerce_Aftersalespro_ShippingMethod_settings', 'aftersalesprogr_trackingwidget_status', 'aftersalesprogr_trackingwidget_uuid', 'aftersalesprogr_order_data_mapper', 'aftersalesprogr_product_mapper', 'woocommerce_custom_orders_table_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acs_pp_point');
DELETE FROM wp_usermeta WHERE meta_key IN ('acs_pp_point');
DELETE FROM wp_termmeta WHERE meta_key IN ('acs_pp_point');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acs_pp_point');

