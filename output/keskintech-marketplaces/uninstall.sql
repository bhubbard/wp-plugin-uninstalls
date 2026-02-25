-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ktmp_brand_term', 'ktmp_brand_options', 'ktmp_brand_from', 'ktmp_fixed_brand', 'ktmp_in_stock_value');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ktmp_edited_date', 'ktmp_variation_group_code', '_sku', '_price', '_product_image_gallery', '_manage_stock', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('ktmp_edited_date', 'ktmp_variation_group_code', '_sku', '_price', '_product_image_gallery', '_manage_stock', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('ktmp_edited_date', 'ktmp_variation_group_code', '_sku', '_price', '_product_image_gallery', '_manage_stock', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ktmp_edited_date', 'ktmp_variation_group_code', '_sku', '_price', '_product_image_gallery', '_manage_stock', '_product_attributes');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ktmp_marketplace_image_field_%';

