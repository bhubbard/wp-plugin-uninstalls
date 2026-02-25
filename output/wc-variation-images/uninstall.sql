-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_variation_images_installed', 'wcvi_installed', 'wcvi_disable_image_zoom', 'wcvi_disable_image_slider', 'wcvi_disable_image_lightbox', 'wcvi_gallery_position', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_flash_messages';
DELETE FROM wp_options WHERE option_name LIKE '_transient_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_variation_images_variation_images', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_variation_images_variation_images', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_variation_images_variation_images', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_variation_images_variation_images', '_product_image_gallery');

