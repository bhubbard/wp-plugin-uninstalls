-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'yith_wcwl_wishlist_page_id', 'visualbuilder_vb_admin_footer', 'visualbuilder_vb_admin_blog', 'visualbuilder_vb_admin_product', 'elementor_cpt_support', 'woocommerce_review_rating_verification_required', 'visualbuilder_secret_key');
DELETE FROM wp_options WHERE option_name LIKE 'visualbuilder_%';
DELETE FROM wp_options WHERE option_name LIKE 'vb_template_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', 'developer_theme_options', 'vb_builder', 'vb_data', 'visualbuilder', '_elementor_edit_mode', '_wpb_vc_js_status', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to', 'rating', 'sao_show_page_builder');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', 'developer_theme_options', 'vb_builder', 'vb_data', 'visualbuilder', '_elementor_edit_mode', '_wpb_vc_js_status', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to', 'rating', 'sao_show_page_builder');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', 'developer_theme_options', 'vb_builder', 'vb_data', 'visualbuilder', '_elementor_edit_mode', '_wpb_vc_js_status', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to', 'rating', 'sao_show_page_builder');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template', 'developer_theme_options', 'vb_builder', 'vb_data', 'visualbuilder', '_elementor_edit_mode', '_wpb_vc_js_status', 'thumbnail_id', '_sale_price_dates_from', '_sale_price_dates_to', 'rating', 'sao_show_page_builder');

