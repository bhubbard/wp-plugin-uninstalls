-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_andreani_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_params_andreani', '_chosen_shipping', '_sucursal_andreani_c');
DELETE FROM wp_usermeta WHERE meta_key IN ('_params_andreani', '_chosen_shipping', '_sucursal_andreani_c');
DELETE FROM wp_termmeta WHERE meta_key IN ('_params_andreani', '_chosen_shipping', '_sucursal_andreani_c');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_params_andreani', '_chosen_shipping', '_sucursal_andreani_c');

