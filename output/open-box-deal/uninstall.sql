-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openboxdeal_cache_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_openboxdeal_main_product_id', '_openboxdeal_main_product_variation_id', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_openboxdeal_main_product_id', '_openboxdeal_main_product_variation_id', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_openboxdeal_main_product_id', '_openboxdeal_main_product_variation_id', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_openboxdeal_main_product_id', '_openboxdeal_main_product_variation_id', '_product_image_gallery');

