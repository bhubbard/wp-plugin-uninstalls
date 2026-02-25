-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_store_name', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_attn', 'woocommerce_store_phone', 'woocommerce_default_country', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'boxes', 'flagship_shipping_shipment_id', 'flagship_shipping_courier_service_code', 'flagship_shipping_pickup_confirmation', 'rates');
DELETE FROM wp_usermeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'boxes', 'flagship_shipping_shipment_id', 'flagship_shipping_courier_service_code', 'flagship_shipping_pickup_confirmation', 'rates');
DELETE FROM wp_termmeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'boxes', 'flagship_shipping_shipment_id', 'flagship_shipping_courier_service_code', 'flagship_shipping_pickup_confirmation', 'rates');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flagship_shipping_shipment_tracking_number', 'flagship_shipping_courier_name', 'boxes', 'flagship_shipping_shipment_id', 'flagship_shipping_courier_service_code', 'flagship_shipping_pickup_confirmation', 'rates');

