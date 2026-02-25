-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('piftu_credentials', 'piftu_import_settings', 'piftu_stock', 'PIFTU_Api::productsLogExisting', 'PIFTU_Api::filters', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('attribute_pa_size', 'attribute_pa_color', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('attribute_pa_size', 'attribute_pa_color', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('attribute_pa_size', 'attribute_pa_color', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('attribute_pa_size', 'attribute_pa_color', '_wp_attachment_image_alt');

