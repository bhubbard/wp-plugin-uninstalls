#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stbtn_book_enable'
wp option delete 'stbtn_book_text'
wp option delete 'stbtn_book_url'
wp option delete 'stbtn_left_right'
wp option delete 'stbtn_book_color'
wp option delete 'stbtn_text_color'
wp option delete 'stbtn_book_bottom'
wp option delete 'stbtn_page_id'
wp option delete 'stbtn_target'
wp option delete 'stbtn_width'
wp option delete 'stbtn_font_size'
wp option delete 'stbtn_font_size_m'
wp option delete 'stbtn_btn_pad'
wp option delete 'stbtn_btn_pad_m'
wp option delete 'stbtn_font_family'
wp option delete 'show_on_desktop'
wp option delete 'stbtn_plugin_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_enable_global_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_enable_global_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_enable_global_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_enable_global_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_show_on_desktop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_show_on_desktop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_show_on_desktop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_show_on_desktop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_left_right'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_left_right'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_left_right'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_left_right'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_show_on_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_show_on_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_show_on_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_show_on_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_bg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_bg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_bg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_bg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_txtcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_txtcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_txtcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_txtcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_font_size_m'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_font_size_m'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_font_size_m'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_font_size_m'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_btn_pad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_btn_pad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_btn_pad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_btn_pad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stbtn_meta_box_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stbtn_meta_box_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stbtn_meta_box_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stbtn_meta_box_width'"
