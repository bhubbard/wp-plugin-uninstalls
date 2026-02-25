-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ac_catalog_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ac_main_product_image', 'ac_attachment_file', '_ac_additional_product_images', 'ac-product-details');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ac_main_product_image', 'ac_attachment_file', '_ac_additional_product_images', 'ac-product-details');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ac_main_product_image', 'ac_attachment_file', '_ac_additional_product_images', 'ac-product-details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ac_main_product_image', 'ac_attachment_file', '_ac_additional_product_images', 'ac-product-details');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_file';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

