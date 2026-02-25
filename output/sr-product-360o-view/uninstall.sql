-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sr_360_icon_1', 'sr_360_icon_2', 'sr_360_icon_custom');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery');

