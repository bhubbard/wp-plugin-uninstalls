-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_active_kit', 'jkit_user_data', 'jkit_notfound_template', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_shop_page_id', 'jkit_elements_enable', 'jkit-liked-layout', 'jkit-liked-section', 'jkit-subscribed', 'jkit-subscribed-email', 'active_sitewide_plugins', 'elementor_disable_color_schemes', 'jeg', 'jeg-dynamic-css', 'jkit_banner_closed', 'update_plugins', 'jkit_banner_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jkit-condition', 'thumbnail_id', '_product_image_gallery', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'menu_item_jkit_mega_menu', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('jkit-condition', 'thumbnail_id', '_product_image_gallery', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'menu_item_jkit_mega_menu', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('jkit-condition', 'thumbnail_id', '_product_image_gallery', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'menu_item_jkit_mega_menu', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jkit-condition', 'thumbnail_id', '_product_image_gallery', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', 'menu_item_jkit_mega_menu', '_wp_attachment_image_alt');

