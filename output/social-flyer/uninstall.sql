-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sf_appear_percent', 'sf_enable_member', 'sf_enable_guest', 'sf_fly_from', 'sf_close_duration', 'sf_cent_bg_img_en', 'sf_display_page', 'sf_main_text_en', 'sf_page_id', 'sf_post_id', 'selectshape', 'sh_color', 'sf_cent_bg_img', 'sf_main_text', 'sf_main_font_color', 'sf_main_font_size', 'sf_size', 'sf_close_position', 'sf_redirection_en', 'sf_easing_type', 'sf_animation_time', 'sf_enable_ttip_hover1', 'sf_enable_ttip_msg1', 'sf_1_uclick_count', 'sf_1_click_count', 'sf_enable_ttip_hover2', 'sf_enable_ttip_msg2', 'sf_2_uclick_count', 'sf_2_click_count', 'sf_enable_ttip_hover3', 'sf_enable_ttip_msg3', 'sf_3_uclick_count', 'sf_3_click_count', 'sf_enable_ttip_hover4', 'sf_enable_ttip_msg4', 'sf_4_uclick_count', 'sf_4_click_count', 'sf_enable_ttip_hover5', 'sf_enable_ttip_msg5', 'sf_5_uclick_count', 'sf_5_click_count', 'sf_enable_ttip_hover6', 'sf_enable_ttip_msg6', 'sf_6_uclick_count', 'sf_6_click_count', 'sf_enable_ttip_hover7', 'sf_enable_ttip_msg7', 'sf_7_uclick_count', 'sf_7_click_count', 'sf_enable_ttip_hover8');
DELETE FROM wp_options WHERE option_name IN ('sf_enable_ttip_msg8', 'sf_8_uclick_count', 'sf_8_click_count', 'sh_aftereffects', 'facebookun');
DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_each_img_en%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_content_type%';
DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_each_color%';
DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_each_img%';
DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_lable%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_social_font_color%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_social_font_size%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_scoial_icon_fa%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_social_icon_color%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_social_icon_size%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_enable_border_hover%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_enable_ttip_hover%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_enable_ttip_msg%';
DELETE FROM wp_options WHERE option_name LIKE 'sf_each_color_hvr%';
DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_net_show%';
DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_net%';
DELETE FROM wp_options WHERE option_name LIKE '%_click_count';
DELETE FROM wp_options WHERE option_name LIKE '%_uclick_count';

