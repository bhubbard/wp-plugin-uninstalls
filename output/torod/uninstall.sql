-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('torod_enabled_cities', 'torod_enabled_states', 'torod_payment_gateway', 'status_radio', 'torod_status_settings', 'torod_wp_all_settings', 'torod_token', 'torod_ordermappingstatus', 'torod_enabled_countries', 'woocommerce_weight_unit', 'torod_demo_account', 'torod_log_mode', 'torod_location_data', 'torod_version', 'torod_webhook_test');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('torod_order_id', '_cart_weight', '_cart_weight_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('torod_order_id', '_cart_weight', '_cart_weight_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('torod_order_id', '_cart_weight', '_cart_weight_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('torod_order_id', '_cart_weight', '_cart_weight_type');

