-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nnfy_header_layout', 'nnfy_footer_layout', 'nnfy_page_title_custom_postion', 'nnfy_blog_img_size', 'nnfy_do_activation_redirect', 'woocommerce_shop_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id', 'woocommerce_myaccount_page_id', 'yith_wcwl_wishlist_page_id', 'nnfy_template_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');

