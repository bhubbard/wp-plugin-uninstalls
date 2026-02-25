-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caledros_basic_blocks_enable_preload', 'caledros_basic_blocks_add_column_layout_to_wp_site_blocks', 'caledros_basic_blocks_set_custom_height_to_wp_site_blocks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('category_image', 'category_image_url', 'alt_text_category_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('category_image', 'category_image_url', 'alt_text_category_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('category_image', 'category_image_url', 'alt_text_category_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('category_image', 'category_image_url', 'alt_text_category_image');

