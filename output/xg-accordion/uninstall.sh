#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qvt_title_font_size'
wp option delete 'qvt_price_font_size'
wp option delete 'qvt_descr_font_size'
wp option delete 'qvt_btn_font_size'
wp option delete 'qvt_meta_font_size'
wp option delete 'qvt_tag_font_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_title_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_title_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_title_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_title_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_title_active_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_title_active_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_title_active_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_title_active_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_title_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_title_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_title_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_title_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_active_title_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_active_title_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_active_title_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_active_title_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_border_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_border_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_border_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_border_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_descr_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_descr_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_descr_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_descr_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_descr_bg_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_descr_bg_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_descr_bg_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_descr_bg_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_title_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_title_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_title_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_title_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xga_short_descr_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xga_short_descr_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xga_short_descr_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xga_short_descr_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_open_initial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_open_initial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_open_initial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_open_initial'"
