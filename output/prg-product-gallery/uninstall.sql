-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prgm_product_gallery_global', 'prgm_disable_Product_default_gallery');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_prgm_active_product_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_prgm_active_product_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_prgm_active_product_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_prgm_active_product_gallery');

