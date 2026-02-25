-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'eniture_quantity_calculator_settings_app_block_options', 'eniture_quantity_calculator_status', 'eniture_quantity_calculator_last_date_check', 'eniture_quantity_calculator_coverage_input_size', 'eniture_quantity_calculator_settings_cart_input_size', 'eniture_quantity_calculator_settings_license_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eniture_enable_quantity_calculator', 'eniture_quantity_per_unit', 'eniture_minimum_square_feet_value', 'eniture_maximum_square_feet_value', 'eniture_unit_measurement_value', 'eniture_message_for_user', 'eniture_coverage_input_label');
DELETE FROM wp_usermeta WHERE meta_key IN ('eniture_enable_quantity_calculator', 'eniture_quantity_per_unit', 'eniture_minimum_square_feet_value', 'eniture_maximum_square_feet_value', 'eniture_unit_measurement_value', 'eniture_message_for_user', 'eniture_coverage_input_label');
DELETE FROM wp_termmeta WHERE meta_key IN ('eniture_enable_quantity_calculator', 'eniture_quantity_per_unit', 'eniture_minimum_square_feet_value', 'eniture_maximum_square_feet_value', 'eniture_unit_measurement_value', 'eniture_message_for_user', 'eniture_coverage_input_label');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eniture_enable_quantity_calculator', 'eniture_quantity_per_unit', 'eniture_minimum_square_feet_value', 'eniture_maximum_square_feet_value', 'eniture_unit_measurement_value', 'eniture_message_for_user', 'eniture_coverage_input_label');

