-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'wc_rlc_api_key_prod', 'wc_rlc_freight_weight_threshold', 'wc_rlc_environment', 'wc_rlc_sandbox_mode', 'wc_rlc_pallet_limit', 'wc_rlc_override_destination_accessorials', 'wc_rlc_override_limited_delivery', 'wc_rlc_override_inside_delivery', 'wc_rlc_override_destination_liftgate', 'wc_rlc_override_delivery_notification', 'wc_rlc_special_shipping_services', 'wc_rlc_must_ship_freight', 'wc_rlc_split_packaging', 'wc_rlc_debug_mode', 'wc_rlc_itemized_rates', 'woocommerce_manage_stock', 'wc_rlc_show_delivery_notification', 'wc_rlc_show_limited_delivery', 'wc_rlc_show_inside_delivery', 'wc_rlc_show_destination_liftgate', 'wc_rlc_packing_method');
DELETE FROM wp_options WHERE option_name LIKE 'rlc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_force_freight', '_is_hazmat', '_shipping_postcode', '_shipping_country', '_shipping_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('_force_freight', '_is_hazmat', '_shipping_postcode', '_shipping_country', '_shipping_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('_force_freight', '_is_hazmat', '_shipping_postcode', '_shipping_country', '_shipping_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_force_freight', '_is_hazmat', '_shipping_postcode', '_shipping_country', '_shipping_state');

