-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_kwik_delivery_settings', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kwik_delivery_order_id', 'kwik_delivery_check_status_url', 'kwik_delivery_pickup_id', 'kwik_delivery_pickup_status', 'kwik_delivery_pickup_tracking_url', 'kwik_delivery_delivery_id', 'kwik_delivery_delivery_status', 'kwik_delivery_delivery_tracking_url', 'kwik_delivery_order_response', 'kwik_delivery_order_details_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('kwik_delivery_order_id', 'kwik_delivery_check_status_url', 'kwik_delivery_pickup_id', 'kwik_delivery_pickup_status', 'kwik_delivery_pickup_tracking_url', 'kwik_delivery_delivery_id', 'kwik_delivery_delivery_status', 'kwik_delivery_delivery_tracking_url', 'kwik_delivery_order_response', 'kwik_delivery_order_details_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('kwik_delivery_order_id', 'kwik_delivery_check_status_url', 'kwik_delivery_pickup_id', 'kwik_delivery_pickup_status', 'kwik_delivery_pickup_tracking_url', 'kwik_delivery_delivery_id', 'kwik_delivery_delivery_status', 'kwik_delivery_delivery_tracking_url', 'kwik_delivery_order_response', 'kwik_delivery_order_details_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kwik_delivery_order_id', 'kwik_delivery_check_status_url', 'kwik_delivery_pickup_id', 'kwik_delivery_pickup_status', 'kwik_delivery_pickup_tracking_url', 'kwik_delivery_delivery_id', 'kwik_delivery_delivery_status', 'kwik_delivery_delivery_tracking_url', 'kwik_delivery_order_response', 'kwik_delivery_order_details_response');

