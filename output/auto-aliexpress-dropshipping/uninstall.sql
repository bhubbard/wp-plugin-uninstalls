-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_aliexpress_enable_accessibility', 'auto_robot_license_activated', 'auto_aliexpress_version_pro', 'auto_aliexpress_addons', 'auto_aliexpress_pagination_entries', 'auto_aliexpress_pagination_listings', '_auto_aliexpress_activation_redirect', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_visibility', '_stock_status', '_sku', '_manage_stock', '_stock', '_product_attributes', '_product_image_gallery', '_wp_attachment_image_alt', '_a2w_external_image_url', '_wp_a2w_attached_file', '_swatch_type_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_visibility', '_stock_status', '_sku', '_manage_stock', '_stock', '_product_attributes', '_product_image_gallery', '_wp_attachment_image_alt', '_a2w_external_image_url', '_wp_a2w_attached_file', '_swatch_type_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_visibility', '_stock_status', '_sku', '_manage_stock', '_stock', '_product_attributes', '_product_image_gallery', '_wp_attachment_image_alt', '_a2w_external_image_url', '_wp_a2w_attached_file', '_swatch_type_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_visibility', '_stock_status', '_sku', '_manage_stock', '_stock', '_product_attributes', '_product_image_gallery', '_wp_attachment_image_alt', '_a2w_external_image_url', '_wp_a2w_attached_file', '_swatch_type_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

