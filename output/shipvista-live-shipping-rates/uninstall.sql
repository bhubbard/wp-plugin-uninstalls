-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipvista_user_name', 'enabled', 'shipvista_user_email', 'shipvista_user_pass', 'shipvista_user_token', 'shipvista_user_avatar', 'shipvista_user_balance', 'shipvista_user_currency', 'shipvista_refresh_token', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_enable_shipping_calc', 'shipvista_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipvista_shipment_label', '_shipvista_tracking_number', '_shipvista_carrier_id', '_shipvista_shipment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipvista_shipment_label', '_shipvista_tracking_number', '_shipvista_carrier_id', '_shipvista_shipment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipvista_shipment_label', '_shipvista_tracking_number', '_shipvista_carrier_id', '_shipvista_shipment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipvista_shipment_label', '_shipvista_tracking_number', '_shipvista_carrier_id', '_shipvista_shipment_id');

