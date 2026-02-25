-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ups_shipper_info', 'ups_account_details', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('confirmation_data_array', 'created_shipments_details_array', 'ShipmentIdentificationNumber');
DELETE FROM wp_usermeta WHERE meta_key IN ('confirmation_data_array', 'created_shipments_details_array', 'ShipmentIdentificationNumber');
DELETE FROM wp_termmeta WHERE meta_key IN ('confirmation_data_array', 'created_shipments_details_array', 'ShipmentIdentificationNumber');
DELETE FROM wp_commentmeta WHERE meta_key IN ('confirmation_data_array', 'created_shipments_details_array', 'ShipmentIdentificationNumber');

