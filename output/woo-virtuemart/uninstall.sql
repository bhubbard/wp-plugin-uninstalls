-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vtm_Host', 'vtm_db', 'vtm_dbUser', 'vtm_dbPass', 'vrm_prefix', 'tax_ids', 'product_cat_children', '_transient_wc_attribute_taxonomies', 'attribute_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery', '_thumbnail_id');

