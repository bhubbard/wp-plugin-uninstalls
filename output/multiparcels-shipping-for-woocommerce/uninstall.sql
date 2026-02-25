-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'woocommerce_weight_unit', 'multiparcels_settings', 'multiparcels_sender_details', 'multiparcels_address_autocomplete', 'multiparcels_carrier_logos', 'multiparcels_checkout', 'multiparcels_automatic_confirmation', 'woocommerce_paysera_settings');
DELETE FROM wp_options WHERE option_name LIKE 'multiparcels_extra_cities%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('multiparcels_does_not_fit', 'multiparcels_external_id', 'multiparcels_location_identifier', 'multiparcels_products', 'multiparcels_hs_code', 'multiparcels_location_identifier_name', 'multiparcels_cod');
DELETE FROM wp_usermeta WHERE meta_key IN ('multiparcels_does_not_fit', 'multiparcels_external_id', 'multiparcels_location_identifier', 'multiparcels_products', 'multiparcels_hs_code', 'multiparcels_location_identifier_name', 'multiparcels_cod');
DELETE FROM wp_termmeta WHERE meta_key IN ('multiparcels_does_not_fit', 'multiparcels_external_id', 'multiparcels_location_identifier', 'multiparcels_products', 'multiparcels_hs_code', 'multiparcels_location_identifier_name', 'multiparcels_cod');
DELETE FROM wp_commentmeta WHERE meta_key IN ('multiparcels_does_not_fit', 'multiparcels_external_id', 'multiparcels_location_identifier', 'multiparcels_products', 'multiparcels_hs_code', 'multiparcels_location_identifier_name', 'multiparcels_cod');

