-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_transient_login_credentials_from_gigl_deleivery', 'active_sitewide_plugins', 'woocommerce_gigl_delivery_settings', 'login_credentials_from_gigl_deleivery');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone_number', 'gigl_delivery_waybill', 'gigl_delivery_check_status_url', 'gigl_delivery_pickup_id', 'gigl_delivery_pickup_tracking_url', 'gigl_delivery_delivery_id', 'gigl_delivery_delivery_tracking_url', 'gigl_delivery_status_res', 'gigl_delivery_order_response', 'gigl_delivery_tracking_id', 'gigl_delivery_order_details_response', 'gigl_state_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone_number', 'gigl_delivery_waybill', 'gigl_delivery_check_status_url', 'gigl_delivery_pickup_id', 'gigl_delivery_pickup_tracking_url', 'gigl_delivery_delivery_id', 'gigl_delivery_delivery_tracking_url', 'gigl_delivery_status_res', 'gigl_delivery_order_response', 'gigl_delivery_tracking_id', 'gigl_delivery_order_details_response', 'gigl_state_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone_number', 'gigl_delivery_waybill', 'gigl_delivery_check_status_url', 'gigl_delivery_pickup_id', 'gigl_delivery_pickup_tracking_url', 'gigl_delivery_delivery_id', 'gigl_delivery_delivery_tracking_url', 'gigl_delivery_status_res', 'gigl_delivery_order_response', 'gigl_delivery_tracking_id', 'gigl_delivery_order_details_response', 'gigl_state_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone_number', 'gigl_delivery_waybill', 'gigl_delivery_check_status_url', 'gigl_delivery_pickup_id', 'gigl_delivery_pickup_tracking_url', 'gigl_delivery_delivery_id', 'gigl_delivery_delivery_tracking_url', 'gigl_delivery_status_res', 'gigl_delivery_order_response', 'gigl_delivery_tracking_id', 'gigl_delivery_order_details_response', 'gigl_state_value');

