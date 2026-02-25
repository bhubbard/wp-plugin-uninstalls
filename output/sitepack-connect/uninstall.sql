-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'sitepack_ajax_stock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery', '_product_attributes', '_wp_attachment_image_alt', 'import_provider', 'import_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery', '_product_attributes', '_wp_attachment_image_alt', 'import_provider', 'import_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery', '_product_attributes', '_wp_attachment_image_alt', 'import_provider', 'import_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery', '_product_attributes', '_wp_attachment_image_alt', 'import_provider', 'import_source');

