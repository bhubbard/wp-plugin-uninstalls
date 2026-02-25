-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('show_comments_cookies_opt_in', 'frontis_blocks_do_activation_redirect', 'frontis_blocks_version', 'fb_global_colors', 'fb_automatic_block_recovery', 'fb_enable_quick_action_bar', 'fb_copy_paste_style', 'fb_gradient_colors', 'fb_globaltypo', 'frontisblockspro_license_options', 'frontis_theme_options', 'fb_global_asset_updated', 'fb_custom_colors', 'fb_custom_gradient_colors', 'fb_typography', 'fb_custom_typography', 'fb_fontfamilies', 'fb_custom_css', 'global_site_colors', 'fb_global_styles', 'fb_update_allowed_blocks', 'fb_active_blocks', 'fb_custom_icons_name', 'fb_custom_icons', 'fb_plugin_version', 'fb_last_updated', 'frontis_blocks_settings', 'frontis_blocks_active_blocks', 'fb_google_fonts_url', 'fb_default_content_width', 'fb_container_column_gap', 'fb_container_row_gap', 'fb_container_padding', 'active_sitewide_plugins', 'google_fonts_data', 'update_plugins', 'frontis_cf7_form_list', 'frontis_cf7_form_html', 'frontis_fluent_forms_list', 'frontis_related_taxonomy', 'frontis_authors_with_posts', 'frontis_post_types');
DELETE FROM wp_options WHERE option_name LIKE 'fb_typography_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'fb_block_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'fb_taxonomy_image', '_frontis_template_settings', '_frontis_page_settings', '_thumbnail_id', 'liked_posts', 'post_likes_count', 'frontis_blocks_used', 'generate_critical_css', '_wp_page_template', '_fb_page_badge', 'fb_page_assets_generation');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'fb_taxonomy_image', '_frontis_template_settings', '_frontis_page_settings', '_thumbnail_id', 'liked_posts', 'post_likes_count', 'frontis_blocks_used', 'generate_critical_css', '_wp_page_template', '_fb_page_badge', 'fb_page_assets_generation');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'fb_taxonomy_image', '_frontis_template_settings', '_frontis_page_settings', '_thumbnail_id', 'liked_posts', 'post_likes_count', 'frontis_blocks_used', 'generate_critical_css', '_wp_page_template', '_fb_page_badge', 'fb_page_assets_generation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'fb_taxonomy_image', '_frontis_template_settings', '_frontis_page_settings', '_thumbnail_id', 'liked_posts', 'post_likes_count', 'frontis_blocks_used', 'generate_critical_css', '_wp_page_template', '_fb_page_badge', 'fb_page_assets_generation');

