-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RemoveBG_ApiKey', 'RemoveBG_products', 'RemoveBG_products_IDs', 'RemoveBG_thumbnail', 'RemoveBG_gallery', 'RemoveBG_Background', 'RemoveBG_Background_Color', 'RemoveBG_Preserve_Resize', 'RemoveBG_Include_Processed', 'RemoveBG_Background_Image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery');

