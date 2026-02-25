-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snappbox_api', 'snappbox_store_phone', 'snappbox_store_name', 'woocommerce_snappbox_shipping_method_settings', 'snappbox_yandex_deactivation_goal', 'woocommerce_shipping_zones_cache', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_latitude', '_customer_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_latitude', '_customer_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_latitude', '_customer_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_latitude', '_customer_longitude');

