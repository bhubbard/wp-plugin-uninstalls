-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('defaultContent', 'rewrite_rules', 'widget_nav_menu', 'widget_custom_html', 'widget_media_image', 'widget_Kite_video', 'widget_woocommerce_layered_nav', 'kite_product_images_gallery', 'woocommerce_placeholder_image', 'kite_instagram_short_access_token', 'kite_instagram_long_access_token', 'kite_instagram_user_id', 'woocommerce_myaccount_page_id', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_hide_out_of_stock_items', 'woocommerce_default_catalog_orderby', 'woocommerce_enable_review_rating', 'woocommerce_tax_display_shop', 'kite_demos_list', 'kite_template_library_data', 'kite_banners_list', 'wc_attribute_taxonomies', 'kite_instagram_authorization_code', 'kite_instagram_long_acess_token_refresh', 'kite_user_instagram_media_list', 'kite_instagram_username', 'wc_term_counts', 'kite_icon_names');
DELETE FROM wp_options WHERE option_name LIKE '%_license_verified';
DELETE FROM wp_options WHERE option_name LIKE 'kite_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'kite_impoted_post_%';
DELETE FROM wp_options WHERE option_name LIKE 'kite_imported_post_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_thumbnail_id', '_product_image_gallery', 'header-template', 'footer-template', 'term-color', 'term-image-id', '_wp_attachment_image_alt', 'media', 'audio-url', 'video-id', 'video-type', 'quote_content', 'quote_author', 'blog-sidebar', 'blog-sidebar-position', 'page-type-switch', 'gallery', 'image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_thumbnail_id', '_product_image_gallery', 'header-template', 'footer-template', 'term-color', 'term-image-id', '_wp_attachment_image_alt', 'media', 'audio-url', 'video-id', 'video-type', 'quote_content', 'quote_author', 'blog-sidebar', 'blog-sidebar-position', 'page-type-switch', 'gallery', 'image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_thumbnail_id', '_product_image_gallery', 'header-template', 'footer-template', 'term-color', 'term-image-id', '_wp_attachment_image_alt', 'media', 'audio-url', 'video-id', 'video-type', 'quote_content', 'quote_author', 'blog-sidebar', 'blog-sidebar-position', 'page-type-switch', 'gallery', 'image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_thumbnail_id', '_product_image_gallery', 'header-template', 'footer-template', 'term-color', 'term-image-id', '_wp_attachment_image_alt', 'media', 'audio-url', 'video-id', 'video-type', 'quote_content', 'quote_author', 'blog-sidebar', 'blog-sidebar-position', 'page-type-switch', 'gallery', 'image');

