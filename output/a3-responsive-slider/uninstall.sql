-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a3rev_rslider_version', 'a3rev_rslider_just_installed', 'a3_responsive_slider_style_version', 'a3_rslider_template_1', 'a3_rslider_template_2', 'a3_rslider_template_card', 'a3_rslider_template_widget', 'a3_rslider_template_mobile', 'a3_rslider_template1_control_settings', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE '%_google_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_toggle_box_open';
DELETE FROM wp_options WHERE option_name LIKE '%-custom-boxes';
DELETE FROM wp_options WHERE option_name LIKE '%_global_settings';
DELETE FROM wp_options WHERE option_name LIKE 'a3_rslider_%';
DELETE FROM wp_options WHERE option_name LIKE '%_dimensions_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_slider_styles_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_control_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_pager_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_title_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_caption_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_readmore_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_a3_slider_id', '_a3_slider_settings', '_a3_slider_template', '_a3_slider_is_used');
DELETE FROM wp_usermeta WHERE meta_key IN ('_a3_slider_id', '_a3_slider_settings', '_a3_slider_template', '_a3_slider_is_used');
DELETE FROM wp_termmeta WHERE meta_key IN ('_a3_slider_id', '_a3_slider_settings', '_a3_slider_template', '_a3_slider_is_used');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_a3_slider_id', '_a3_slider_settings', '_a3_slider_template', '_a3_slider_is_used');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_a3_slider_is_used_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_a3_slider_is_used_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_a3_slider_is_used_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_a3_slider_is_used_%';

