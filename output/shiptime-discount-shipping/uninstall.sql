-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shiptime_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shiptime_shipping_service_last_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('shiptime_shipping_service_last_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('shiptime_shipping_service_last_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shiptime_shipping_service_last_error');

