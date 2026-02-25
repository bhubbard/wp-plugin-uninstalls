-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hclpage', 'sld_embed_credit_title', 'sld_embed_credit_link', 'sld_enable_search', 'sld_lan_live_search', 'sld_add_new_button', 'sld_add_item_link', 'sld_lan_add_link', 'sld_enable_top_part', 'sld_lan_share_list', 'sld_enable_rtl', 'sld_no_results_found', 'sld_enable_click_tracking', 'sld_ot_convrt', 'option_tree', 'sld_enable_upvote', 'sld_enable_dark_mode', 'sld_lan_enable_dark_mode', 'sld_lan_dark_mode_on', 'sld_lan_light_mode_on', 'sld_enable_scroll_to_top', 'sld_custom_style', 'sld_custom_js', 'sld_direct_link_img_upload_for_list_item');
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_dismiss';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_active_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'qcopd_list_item01', 'qcopd_list_conf', 'sld_add_block');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'qcopd_list_item01', 'qcopd_list_conf', 'sld_add_block');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'qcopd_list_item01', 'qcopd_list_conf', 'sld_add_block');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'qcopd_list_item01', 'qcopd_list_conf', 'sld_add_block');

