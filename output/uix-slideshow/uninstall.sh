#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uix_slideshow_opt_cssnewcode'
wp option delete 'uix_slideshow_opt_animation'
wp option delete 'uix_slideshow_opt_auto'
wp option delete 'uix_slideshow_opt_effect_duration'
wp option delete 'uix_slideshow_opt_speed'
wp option delete 'uix_slideshow_opt_arr_nav'
wp option delete 'uix_slideshow_opt_paging_nav'
wp option delete 'uix_slideshow_opt_animloop'
wp option delete 'uix_slideshow_opt_drag'
wp option delete 'uix_slideshow_opt_prev_txt'
wp option delete 'uix_slideshow_opt_next_txt'
wp option delete 'uix_slideshow_opt_custom_params'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_bcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_bcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_bcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_bcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_button_textcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_button_textcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_button_textcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_button_textcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_bsize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_bsize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_bsize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_bsize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_title_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_title_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_title_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_title_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uix_slideshow_caption_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uix_slideshow_caption_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uix_slideshow_caption_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uix_slideshow_caption_color'"
