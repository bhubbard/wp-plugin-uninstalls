-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_parcelpro_shipping_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_parcelpro_shipping_types_updated', 'woocommerce_parcelpro_shipping_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_parcelpro_status', '_parcelpro_id', '_parcelpro_track_url', '_parcelpro_package', '_shipping_address_1', '_shipping_address_2', '_shipping_company', '_shipping_first_name', '_shipping_last_name', '_shipping_city', '_shipping_postcode', '_shipping_country', '_shipping_email', '_shipping_phone', '_parcelpro_label', '_parcelpro_track', '_parcelpro_track_vervoerder');
DELETE FROM wp_usermeta WHERE meta_key IN ('_parcelpro_status', '_parcelpro_id', '_parcelpro_track_url', '_parcelpro_package', '_shipping_address_1', '_shipping_address_2', '_shipping_company', '_shipping_first_name', '_shipping_last_name', '_shipping_city', '_shipping_postcode', '_shipping_country', '_shipping_email', '_shipping_phone', '_parcelpro_label', '_parcelpro_track', '_parcelpro_track_vervoerder');
DELETE FROM wp_termmeta WHERE meta_key IN ('_parcelpro_status', '_parcelpro_id', '_parcelpro_track_url', '_parcelpro_package', '_shipping_address_1', '_shipping_address_2', '_shipping_company', '_shipping_first_name', '_shipping_last_name', '_shipping_city', '_shipping_postcode', '_shipping_country', '_shipping_email', '_shipping_phone', '_parcelpro_label', '_parcelpro_track', '_parcelpro_track_vervoerder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_parcelpro_status', '_parcelpro_id', '_parcelpro_track_url', '_parcelpro_package', '_shipping_address_1', '_shipping_address_2', '_shipping_company', '_shipping_first_name', '_shipping_last_name', '_shipping_city', '_shipping_postcode', '_shipping_country', '_shipping_email', '_shipping_phone', '_parcelpro_label', '_parcelpro_track', '_parcelpro_track_vervoerder');

