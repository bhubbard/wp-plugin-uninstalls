-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_Gokada_delivery_settings', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gokada_delivery_failed', 'gokada_delivery_order_id', 'gokada_delivery_pickup_tracking_url', 'gokada_order_status', 'gokada_delivery_delivery_tracking_url', 'gokada_delivery_order_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('gokada_delivery_failed', 'gokada_delivery_order_id', 'gokada_delivery_pickup_tracking_url', 'gokada_order_status', 'gokada_delivery_delivery_tracking_url', 'gokada_delivery_order_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('gokada_delivery_failed', 'gokada_delivery_order_id', 'gokada_delivery_pickup_tracking_url', 'gokada_order_status', 'gokada_delivery_delivery_tracking_url', 'gokada_delivery_order_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gokada_delivery_failed', 'gokada_delivery_order_id', 'gokada_delivery_pickup_tracking_url', 'gokada_order_status', 'gokada_delivery_delivery_tracking_url', 'gokada_delivery_order_response');

