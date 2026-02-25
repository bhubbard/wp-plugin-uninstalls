-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qi_blocks_setup_wizard', 'qi_blocks_global_settings_typography', 'qi_blocks_global_settings_typography_styles', 'qi_blocks_global_settings_typography_apply_to', 'qi_blocks_global_styles', 'widget_block', 'qi_blocks_cropped_images', 'qi_blocks_custom_templates_flag', 'woocommerce_shop_page_id', 'woocommerce_enable_review_rating', 'qi_blocks_check_theme_gutenberg_style', '_qi_blocks_get_the_block_template_html ', '_qi_blocks_get_the_block_template_html');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');

