-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_reviews', 'yith_wcwl_wishlist_page_id', 'elementor_cpt_support', 'woocommerce_enable_myaccount_registration', 'registration', 'alpus_sidebars', 'alpus_placeholder_image', 'elementor_css_print_method', 'woocommerce_shop_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'wc_layered_nav_counts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alpus_start_template', '_elementor_edit_mode', '_elementor_data', 'page_css', 'page_js', '_alpus_studio_id', '_menu_item_megamenu', '_menu_item_megamenu_width', '_menu_item_megamenu_pos', '_menu_item_image', '_menu_item_flyout_image', '_menu_item_block', '_menu_item_nolink', '_menu_item_icon', '_menu_item_label_name', '_elementor_page_settings', 'content_type', 'content_type_term', 'nickname', 'supported_images', '_wp_attachment_image_alt', 'like_count', 'product_cat_icon', 'page_title', 'page_subtitle', '_wp_page_template', '_wpb_shortcodes_custom_css', '_wpb_post_custom_css', 'brand_thumbnail_id', 'rating', 'alpus_post_likes');
DELETE FROM wp_usermeta WHERE meta_key IN ('alpus_start_template', '_elementor_edit_mode', '_elementor_data', 'page_css', 'page_js', '_alpus_studio_id', '_menu_item_megamenu', '_menu_item_megamenu_width', '_menu_item_megamenu_pos', '_menu_item_image', '_menu_item_flyout_image', '_menu_item_block', '_menu_item_nolink', '_menu_item_icon', '_menu_item_label_name', '_elementor_page_settings', 'content_type', 'content_type_term', 'nickname', 'supported_images', '_wp_attachment_image_alt', 'like_count', 'product_cat_icon', 'page_title', 'page_subtitle', '_wp_page_template', '_wpb_shortcodes_custom_css', '_wpb_post_custom_css', 'brand_thumbnail_id', 'rating', 'alpus_post_likes');
DELETE FROM wp_termmeta WHERE meta_key IN ('alpus_start_template', '_elementor_edit_mode', '_elementor_data', 'page_css', 'page_js', '_alpus_studio_id', '_menu_item_megamenu', '_menu_item_megamenu_width', '_menu_item_megamenu_pos', '_menu_item_image', '_menu_item_flyout_image', '_menu_item_block', '_menu_item_nolink', '_menu_item_icon', '_menu_item_label_name', '_elementor_page_settings', 'content_type', 'content_type_term', 'nickname', 'supported_images', '_wp_attachment_image_alt', 'like_count', 'product_cat_icon', 'page_title', 'page_subtitle', '_wp_page_template', '_wpb_shortcodes_custom_css', '_wpb_post_custom_css', 'brand_thumbnail_id', 'rating', 'alpus_post_likes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alpus_start_template', '_elementor_edit_mode', '_elementor_data', 'page_css', 'page_js', '_alpus_studio_id', '_menu_item_megamenu', '_menu_item_megamenu_width', '_menu_item_megamenu_pos', '_menu_item_image', '_menu_item_flyout_image', '_menu_item_block', '_menu_item_nolink', '_menu_item_icon', '_menu_item_label_name', '_elementor_page_settings', 'content_type', 'content_type_term', 'nickname', 'supported_images', '_wp_attachment_image_alt', 'like_count', 'product_cat_icon', 'page_title', 'page_subtitle', '_wp_page_template', '_wpb_shortcodes_custom_css', '_wpb_post_custom_css', 'brand_thumbnail_id', 'rating', 'alpus_post_likes');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_template_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_template_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_template_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_template_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_blocks_style_options_css';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_blocks_style_options_css';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_blocks_style_options_css';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_blocks_style_options_css';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_builder_css';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_builder_css';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_builder_css';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_builder_css';

