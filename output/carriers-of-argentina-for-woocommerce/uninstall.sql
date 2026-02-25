-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kshipping_boxes_installed', 'woocommerce_kshippingargentina-manager_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%conversion_rate';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kshipping_sizes', '_force_label', '_package_data', 'kshippingargentina_label_file', 'kshippingargentina_tracking_code', '_weight', '_length', '_width', '_height', 'kshippingargentina_label_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('kshipping_sizes', '_force_label', '_package_data', 'kshippingargentina_label_file', 'kshippingargentina_tracking_code', '_weight', '_length', '_width', '_height', 'kshippingargentina_label_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('kshipping_sizes', '_force_label', '_package_data', 'kshippingargentina_label_file', 'kshippingargentina_tracking_code', '_weight', '_length', '_width', '_height', 'kshippingargentina_label_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kshipping_sizes', '_force_label', '_package_data', 'kshippingargentina_label_file', 'kshippingargentina_tracking_code', '_weight', '_length', '_width', '_height', 'kshippingargentina_label_data');

