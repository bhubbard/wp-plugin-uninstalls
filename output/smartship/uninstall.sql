-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartship_enabled_cities', 'smartship_enabled_states', 'smartship_payment_gateway', 'smartship_status_radio', 'smartship_status_settings', 'smartship_wp_all_settings', 'smartship_token', 'smartship_ordermappingstatus', 'woocommerce_weight_unit', 'smartship_enabled_countries', 'smartship_demo_account', 'smartship_log_mode', 'smartship_version', 'smartship_webhook_test');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smartship_order_id', 'tracking_id', 'aws_label', 'smartship_description', 'smartship_shipment_tracking_url', '_cart_weight', '_cart_weight_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('smartship_order_id', 'tracking_id', 'aws_label', 'smartship_description', 'smartship_shipment_tracking_url', '_cart_weight', '_cart_weight_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('smartship_order_id', 'tracking_id', 'aws_label', 'smartship_description', 'smartship_shipment_tracking_url', '_cart_weight', '_cart_weight_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smartship_order_id', 'tracking_id', 'aws_label', 'smartship_description', 'smartship_shipment_tracking_url', '_cart_weight', '_cart_weight_type');

