-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_paps_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paps_task_status', 'paps_pickup_id', 'paps_delivery_id', 'paps_pickup_tracking_link', 'paps_delivery_tracking_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('paps_task_status', 'paps_pickup_id', 'paps_delivery_id', 'paps_pickup_tracking_link', 'paps_delivery_tracking_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('paps_task_status', 'paps_pickup_id', 'paps_delivery_id', 'paps_pickup_tracking_link', 'paps_delivery_tracking_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paps_task_status', 'paps_pickup_id', 'paps_delivery_id', 'paps_pickup_tracking_link', 'paps_delivery_tracking_link');

