-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_attribute', 'product_attribute_label', 'product_attribute_unit', 'product_attributes_number', 'al_display_attributes', 'ic_standard_attributes', 'ic_attributes_compare', 'ic_product_upgrade_done', 'attributes_table_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_size_length', '_size_width', '_size_height', '_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('_size_length', '_size_width', '_size_height', '_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('_size_length', '_size_width', '_size_height', '_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_size_length', '_size_width', '_size_height', '_weight');

