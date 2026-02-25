-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stm_vin_method_name', 'stm_vin_method_name_history', 'stm_vehicle_listing_options', 'value');
DELETE FROM wp_options WHERE option_name LIKE 'stm_vin_decoder_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vin_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('vin_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('vin_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vin_number');

