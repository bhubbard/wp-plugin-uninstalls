-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcvt_settings', 'wpcvt_localization', 'woocommerce_cart_redirect_after_add', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcvt_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcvt_active', 'wpcvt_name', 'wpcvt_image', 'wpcvt_image_id', '_wpcvt_dropdown', 'wpcvi_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcvt_active', 'wpcvt_name', 'wpcvt_image', 'wpcvt_image_id', '_wpcvt_dropdown', 'wpcvi_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcvt_active', 'wpcvt_name', 'wpcvt_image', 'wpcvt_image_id', '_wpcvt_dropdown', 'wpcvi_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcvt_active', 'wpcvt_name', 'wpcvt_image', 'wpcvt_image_id', '_wpcvt_dropdown', 'wpcvi_images');

