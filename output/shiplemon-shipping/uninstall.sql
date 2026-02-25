-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_unit_weight', 'woocommerce_shiplemon_shipping_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shiplemon_shipment_rate_id', '_shiplemon_shipment_raw', '_shiplemon_shipment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shiplemon_shipment_rate_id', '_shiplemon_shipment_raw', '_shiplemon_shipment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shiplemon_shipment_rate_id', '_shiplemon_shipment_raw', '_shiplemon_shipment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shiplemon_shipment_rate_id', '_shiplemon_shipment_raw', '_shiplemon_shipment_id');

