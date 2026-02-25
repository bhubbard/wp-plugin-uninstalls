-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visual_portfolio_updated_caps', 'fusion_options', 'portfolio_permalinks', '_vp_add_archive_page', '_vp_trying_to_add_archive_page', 'active_sitewide_plugins', 'visual_portfolio_items_count_notice_state', 'vpf_db_version', 'vp_general', 'vp_images', 'vp_popup_gallery', 'vp_flush_rewrite_rules', '_visual_portfolio_welcome_screen_activation_redirect', 'vp_deactivated_notice_id');
DELETE FROM wp_options WHERE option_name LIKE '%_state';
DELETE FROM wp_options WHERE option_name LIKE '%_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vp_post_type_mapped', 'video_url', '_vp_format_video_url', '_vp_image_focal_point', '_vp_views_count', '_vp_words_count', '_wp_attachment_image_alt', '_wp_attachment_metadata', 'vp_content_source', 'vp_posts_source', 'vp_layout_elements', 'vp_filter', 'vp_sort', 'vp_pagination_style', 'vp_items_click_action_popup_title_source', 'vp_items_click_action_popup_description_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vp_post_type_mapped', 'video_url', '_vp_format_video_url', '_vp_image_focal_point', '_vp_views_count', '_vp_words_count', '_wp_attachment_image_alt', '_wp_attachment_metadata', 'vp_content_source', 'vp_posts_source', 'vp_layout_elements', 'vp_filter', 'vp_sort', 'vp_pagination_style', 'vp_items_click_action_popup_title_source', 'vp_items_click_action_popup_description_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vp_post_type_mapped', 'video_url', '_vp_format_video_url', '_vp_image_focal_point', '_vp_views_count', '_vp_words_count', '_wp_attachment_image_alt', '_wp_attachment_metadata', 'vp_content_source', 'vp_posts_source', 'vp_layout_elements', 'vp_filter', 'vp_sort', 'vp_pagination_style', 'vp_items_click_action_popup_title_source', 'vp_items_click_action_popup_description_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vp_post_type_mapped', 'video_url', '_vp_format_video_url', '_vp_image_focal_point', '_vp_views_count', '_vp_words_count', '_wp_attachment_image_alt', '_wp_attachment_metadata', 'vp_content_source', 'vp_posts_source', 'vp_layout_elements', 'vp_filter', 'vp_sort', 'vp_pagination_style', 'vp_items_click_action_popup_title_source', 'vp_items_click_action_popup_description_source');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'vp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'vp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'vp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'vp_%';

