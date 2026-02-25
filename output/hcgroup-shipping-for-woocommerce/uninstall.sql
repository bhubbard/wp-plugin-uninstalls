-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_hcgroup_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_iddespacho_hcgroup', '_tracking_number', '_cart_total_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('_iddespacho_hcgroup', '_tracking_number', '_cart_total_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('_iddespacho_hcgroup', '_tracking_number', '_cart_total_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_iddespacho_hcgroup', '_tracking_number', '_cart_total_weight');

