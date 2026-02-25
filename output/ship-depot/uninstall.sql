-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sd_auto_create_shipping', 'sd_status_auto_create_shipping', 'sd_setting_courier', 'active_sitewide_plugins', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'sd_api_key', 'sd_accept_debug_log', 'sd_sender_info', 'sd_setting_fee', 'sd_list_couriers', 'sd_list_storages', 'cb_set_status_for_delivery', 'sd_status_for_delivery', 'cb_set_status_delivery_success', 'sd_status_delivery_success', 'sd_status_delivery_failed', 'cb_set_status_for_control', 'sd_status_for_control', 'sd_update_order_statuses', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_district', 'woocommerce_store_ward', 'sd_show_shipping_fee_detail', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_city', '_billing_district', '_shipping_city', '_shipping_district', '_billing_ward', '_shipping_ward', 'sd_ship_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_city', '_billing_district', '_shipping_city', '_shipping_district', '_billing_ward', '_shipping_ward', 'sd_ship_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_city', '_billing_district', '_shipping_city', '_shipping_district', '_billing_ward', '_shipping_ward', 'sd_ship_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_city', '_billing_district', '_shipping_city', '_shipping_district', '_billing_ward', '_shipping_ward', 'sd_ship_info');

