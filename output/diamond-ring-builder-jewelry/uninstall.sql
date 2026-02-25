-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kirb_import_running', 'kirb_review_notice_dismissed_at', 'kirb_deactivation_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kirb_drafted_by_plugin', '_product_image_gallery', 'woo_variation_gallery_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kirb_drafted_by_plugin', '_product_image_gallery', 'woo_variation_gallery_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kirb_drafted_by_plugin', '_product_image_gallery', 'woo_variation_gallery_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kirb_drafted_by_plugin', '_product_image_gallery', 'woo_variation_gallery_images');

