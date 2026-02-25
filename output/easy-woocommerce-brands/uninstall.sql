-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewbct_permalink', 'ewbct_position', 'ewbct_style', 'ewbct_title', 'ewbct_width', 'ewbct_height', 'ewbct_image_style', 'ewbct_image_brands_columns', 'ewbct_brand_columns');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ewbct_category-image-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ewbct_category-image-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ewbct_category-image-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ewbct_category-image-id');

