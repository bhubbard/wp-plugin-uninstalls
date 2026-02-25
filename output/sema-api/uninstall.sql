-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sema_settings', 'woocommerce_weight_unit', 'sema_plugin_version', 'woocommerce_permalinks', 'sema_hide_productwoimage', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_thumbnail_id', '_wp_attachment_image_alt', '_woocommerce_exclude_image', '_product_image_gallery', '_product_attributes', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_thumbnail_id', '_wp_attachment_image_alt', '_woocommerce_exclude_image', '_product_image_gallery', '_product_attributes', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_thumbnail_id', '_wp_attachment_image_alt', '_woocommerce_exclude_image', '_product_image_gallery', '_product_attributes', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_thumbnail_id', '_wp_attachment_image_alt', '_woocommerce_exclude_image', '_product_image_gallery', '_product_attributes', '_wp_page_template');

