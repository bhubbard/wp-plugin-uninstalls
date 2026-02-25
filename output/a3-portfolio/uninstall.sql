-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a3_portfolio_version', 'portfolio_page_id', 'a3_portfolio_just_installed', 'a3_portfolios_style_version', 'portfolio_inner_container_single_main_image_width_reset', 'a3_portfolio_permalinks', 'a3_portfolio_global_settings', 'a3_portfolio_global_item_expander_settings', 'a3_portfolio_item_cards_settings', 'a3_portfolio_item_posts_settings', 'a3_portfolio_shortcodes_setting', 'update_plugins', 'a3_portfolio_addons_data');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open';
DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_a3_portfolio_image_gallery', '_portfolio_attributes', 'order', '_wp_attachment_image_alt', 'text-color', 'bg-color', 'border-color', '_a3_portfolio_card_desc', '_a3_portfolio_viewmore_button_text', '_a3_portfolio_launch_button_text', '_a3_portfolio_launch_site_url', '_a3_portfolio_launch_open_type', '_a3_portfolio_meta_layout_column', '_a3_portfolio_meta_gallery_wide', '_a3_portfolio_meta_thumb_position', 'active_portfolio_taxonomy');
DELETE FROM wp_usermeta WHERE meta_key IN ('_a3_portfolio_image_gallery', '_portfolio_attributes', 'order', '_wp_attachment_image_alt', 'text-color', 'bg-color', 'border-color', '_a3_portfolio_card_desc', '_a3_portfolio_viewmore_button_text', '_a3_portfolio_launch_button_text', '_a3_portfolio_launch_site_url', '_a3_portfolio_launch_open_type', '_a3_portfolio_meta_layout_column', '_a3_portfolio_meta_gallery_wide', '_a3_portfolio_meta_thumb_position', 'active_portfolio_taxonomy');
DELETE FROM wp_termmeta WHERE meta_key IN ('_a3_portfolio_image_gallery', '_portfolio_attributes', 'order', '_wp_attachment_image_alt', 'text-color', 'bg-color', 'border-color', '_a3_portfolio_card_desc', '_a3_portfolio_viewmore_button_text', '_a3_portfolio_launch_button_text', '_a3_portfolio_launch_site_url', '_a3_portfolio_launch_open_type', '_a3_portfolio_meta_layout_column', '_a3_portfolio_meta_gallery_wide', '_a3_portfolio_meta_thumb_position', 'active_portfolio_taxonomy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_a3_portfolio_image_gallery', '_portfolio_attributes', 'order', '_wp_attachment_image_alt', 'text-color', 'bg-color', 'border-color', '_a3_portfolio_card_desc', '_a3_portfolio_viewmore_button_text', '_a3_portfolio_launch_button_text', '_a3_portfolio_launch_site_url', '_a3_portfolio_launch_open_type', '_a3_portfolio_meta_layout_column', '_a3_portfolio_meta_gallery_wide', '_a3_portfolio_meta_thumb_position', 'active_portfolio_taxonomy');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';

