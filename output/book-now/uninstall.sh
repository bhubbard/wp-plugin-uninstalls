#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rg_book_enable'
wp option delete 'rg_book_text'
wp option delete 'rg_book_url'
wp option delete 'rg_left_right'
wp option delete 'rg_book_color'
wp option delete 'rg_text_color'
wp option delete 'rg_book_bottom'
wp option delete 'rg_page_id'
wp option delete 'rg_target'
wp option delete 'rg_width'
wp option delete 'rg_font_size'
wp option delete 'rg_font_size_m'
wp option delete 'rg_btn_pad'
wp option delete 'rg_btn_pad_m'
wp option delete 'rg_font_family'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_bg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_bg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_bg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_bg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_txtcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_txtcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_txtcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_txtcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_font_size_m'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_font_size_m'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_font_size_m'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_font_size_m'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_btn_pad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_btn_pad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_btn_pad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_btn_pad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_btn_pad_m'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_meta_box_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_meta_box_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_meta_box_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_meta_box_width'"
