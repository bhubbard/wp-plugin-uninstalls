#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flipnumber'
wp option delete 'flip_height'
wp option delete 'autoplay'
wp option delete 'navigation'
wp option delete 'pagination'
wp option delete 'repeate_loop'
wp option delete 'stop_hover'
wp option delete 'flip_speed'
wp option delete 'flip_bg_color'
wp option delete 'flip_border_color'
wp option delete 'flip_border_width'
wp option delete 'flip_border_radius'
wp option delete 'flip_title_color'
wp option delete 'gobal_color'
wp option delete 'flip_color'
wp option delete 'flip_txt_color'
wp option delete 'default_post_edit_rows'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_frontside_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_frontside_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_frontside_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_frontside_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_Backside_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_Backside_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_Backside_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_Backside_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_frontside_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_frontside_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_frontside_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_frontside_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_frontside_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_frontside_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_frontside_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_frontside_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_backside_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_backside_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_backside_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_backside_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_backside_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_backside_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_backside_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_backside_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_backside_button_txt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_backside_button_txt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_backside_button_txt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_backside_button_txt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_backside_button_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_backside_button_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_backside_button_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_backside_button_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_backside_button_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_backside_button_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_backside_button_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_backside_button_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_frontside_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_frontside_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_frontside_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_frontside_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_Backside_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_Backside_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_Backside_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_Backside_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcb_backside_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcb_backside_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcb_backside_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcb_backside_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
