-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coderockz_woo_delivery_option_delivery_settings', 'coderockz_woo_delivery_date_settings', 'coderockz_woo_delivery_pickup_date_settings', 'coderockz_woo_delivery_time_settings', 'coderockz_woo_delivery_pickup_settings', 'coderockz_woo_delivery_localization_settings', 'coderockz_woo_delivery_other_settings', 'woocommerce_version', 'coderockz_woo_delivery_review_notice', 'coderockz-woo-delivery-activation-time', 'coderockz_woo_delivery_date_time_change', 'woocommerce_ship_to_destination', 'coderockz_woo_delivery_pickup_location_settings', 'coderockz_woo_delivery_additional_field_settings', 'et_divi');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('delivery_date', 'pickup_date', 'delivery_time', 'pickup_time', 'delivery_type', '_virtual', '_downloadable');
DELETE FROM wp_usermeta WHERE meta_key IN ('delivery_date', 'pickup_date', 'delivery_time', 'pickup_time', 'delivery_type', '_virtual', '_downloadable');
DELETE FROM wp_termmeta WHERE meta_key IN ('delivery_date', 'pickup_date', 'delivery_time', 'pickup_time', 'delivery_type', '_virtual', '_downloadable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('delivery_date', 'pickup_date', 'delivery_time', 'pickup_time', 'delivery_type', '_virtual', '_downloadable');

