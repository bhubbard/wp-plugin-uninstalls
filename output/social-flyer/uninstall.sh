#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sf_appear_percent'
wp option delete 'sf_enable_member'
wp option delete 'sf_enable_guest'
wp option delete 'sf_fly_from'
wp option delete 'sf_close_duration'
wp option delete 'sf_cent_bg_img_en'
wp option delete 'sf_display_page'
wp option delete 'sf_main_text_en'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_each_img_en%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_content_type%'"
wp option delete 'sf_page_id'
wp option delete 'sf_post_id'
wp option delete 'selectshape'
wp option delete 'sh_color'
wp option delete 'sf_cent_bg_img'
wp option delete 'sf_main_text'
wp option delete 'sf_main_font_color'
wp option delete 'sf_main_font_size'
wp option delete 'sf_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_each_color%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_each_img%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_lable%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_social_font_color%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_social_font_size%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_scoial_icon_fa%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_social_icon_color%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_social_icon_size%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_enable_border_hover%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_enable_ttip_hover%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_enable_ttip_msg%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sf_each_color_hvr%'"
wp option delete 'sf_close_position'
wp option delete 'sf_redirection_en'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_net_show%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sfsocial_net%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_click_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_uclick_count'"
wp option delete 'sf_easing_type'
wp option delete 'sf_animation_time'
wp option delete 'sf_enable_ttip_hover1'
wp option delete 'sf_enable_ttip_msg1'
wp option delete 'sf_1_uclick_count'
wp option delete 'sf_1_click_count'
wp option delete 'sf_enable_ttip_hover2'
wp option delete 'sf_enable_ttip_msg2'
wp option delete 'sf_2_uclick_count'
wp option delete 'sf_2_click_count'
wp option delete 'sf_enable_ttip_hover3'
wp option delete 'sf_enable_ttip_msg3'
wp option delete 'sf_3_uclick_count'
wp option delete 'sf_3_click_count'
wp option delete 'sf_enable_ttip_hover4'
wp option delete 'sf_enable_ttip_msg4'
wp option delete 'sf_4_uclick_count'
wp option delete 'sf_4_click_count'
wp option delete 'sf_enable_ttip_hover5'
wp option delete 'sf_enable_ttip_msg5'
wp option delete 'sf_5_uclick_count'
wp option delete 'sf_5_click_count'
wp option delete 'sf_enable_ttip_hover6'
wp option delete 'sf_enable_ttip_msg6'
wp option delete 'sf_6_uclick_count'
wp option delete 'sf_6_click_count'
wp option delete 'sf_enable_ttip_hover7'
wp option delete 'sf_enable_ttip_msg7'
wp option delete 'sf_7_uclick_count'
wp option delete 'sf_7_click_count'
wp option delete 'sf_enable_ttip_hover8'
wp option delete 'sf_enable_ttip_msg8'
wp option delete 'sf_8_uclick_count'
wp option delete 'sf_8_click_count'
wp option delete 'sh_aftereffects'
wp option delete 'facebookun'

