-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('restaurantpress_price_display_suffix', 'restaurantpress_meta_box_errors', 'restaurantpress_admin_notices', 'restaurantpress_db_version', 'restaurantpress_permalinks', 'restaurantpress_queue_flush_rewrite_rules', 'restaurantpress_admin_footer_text_rated', 'restaurantpress_enable_gallery_zoom', 'restaurantpress_enable_gallery_slider', 'restaurantpress_enable_gallery_lightbox', 'restaurantpress_colors_css', 'restaurantpress_version', 'restaurantpress_enable_reviews', 'current_theme_supports_restaurantpress', 'restaurantpress_default_catalog_orderby', 'restaurantpress_colors', 'restaurantpress_currency', 'restaurantpress_single_image_width', 'restaurantpress_thumbnail_image_width', 'restaurantpress_thumbnail_cropping', 'restaurantpress_thumbnail_cropping_custom_width', 'restaurantpress_thumbnail_cropping_custom_height', 'restaurantpress_currency_pos', 'restaurantpress_price_thousand_sep', 'restaurantpress_price_decimal_sep', 'restaurantpress_price_num_decimals', 'restaurantpress_enable_lightbox', 'restaurantpress_primary_color', 'restaurantpress_single_page_display', 'restaurantpress_food_single_page', 'food_thumbnail_image_size', 'food_single_image_size', 'rp_extensions_sections', 'rp_installing', '_rp_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'restaurantpress_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'rp_extensions_section_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_featured', '_chef_badge', '_food_image_gallery', 'food_grouping', 'layout_type', '_category_icon', '_featured_image', 'dismissed_food_display_settings_moved_notice', '_wp_attachment_context', 'food_item_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_featured', '_chef_badge', '_food_image_gallery', 'food_grouping', 'layout_type', '_category_icon', '_featured_image', 'dismissed_food_display_settings_moved_notice', '_wp_attachment_context', 'food_item_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_featured', '_chef_badge', '_food_image_gallery', 'food_grouping', 'layout_type', '_category_icon', '_featured_image', 'dismissed_food_display_settings_moved_notice', '_wp_attachment_context', 'food_item_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_regular_price', '_sale_price', '_featured', '_chef_badge', '_food_image_gallery', 'food_grouping', 'layout_type', '_category_icon', '_featured_image', 'dismissed_food_display_settings_moved_notice', '_wp_attachment_context', 'food_item_price');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

