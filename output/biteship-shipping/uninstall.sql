-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_coordinate', 'woocommerce_store_postcode', 'woocommerce_store_shipper_name', 'woocommerce_store_shipper_phone', 'woocommerce_biteship_settings', 'woocommerce_weight_unit', 'woocommerce_ship_to_destination', 'woocommerce_cod_settings');

