#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arbtt_custom_css'
wp option delete 'arbtt_enable'
wp option delete 'arbtt_progress_color'
wp option delete 'arbtt_enable_scroll_progress'
wp option delete 'arbtt_enable_scroll_progress_size'
wp option delete 'arbtt_is_async'
wp option delete 'arbtt_bgc'
wp option delete 'arbtt_bgc_hover'
wp option delete 'arbtt_clr'
wp option delete 'arbtt_clr_hover'
wp option delete 'arbtt_bdr'
wp option delete 'arbtt_bdr_color'
wp option delete 'arbtt_bdr_color_hover'
wp option delete 'arbtt_bdrd'
wp option delete 'arbtt_btnps'
wp option delete 'arbtt_btn_offset_bottom'
wp option delete 'arbtt_btn_offset_right'
wp option delete 'arbtt_btn_offset_left'
wp option delete 'arbtt_btnapr'
wp option delete 'arbtt_btndm'
wp option delete 'arbtt_btn_padding'
wp option delete 'arbtt_btnoc'
wp option delete 'arbtt_fi'
wp option delete 'arbtt_btntx'
wp option delete 'arbtt_btn_ext_img_url'
wp option delete 'arbtt_btn_img'
wp option delete 'arbtt_btn_img_position'
wp option delete 'arbtt_fadein'
wp option delete 'arbtt_fz'
wp option delete 'arbtt_hide_on_phone'
wp option delete 'arbtt_hide_on_tablet'
wp option delete 'arbtt_pwidth'
wp option delete 'arbtt_twidth'
wp option delete 'arbtt_btnst'
wp option delete 'arbtt_do_activation_redirect'
wp option delete 'arbtt'
wp option delete 'arbtt_btnwidth'
wp option delete 'arbtt_btnheight'
wp option delete 'arbtt_meta_position'
wp option delete 'arbtt_word_count'
wp option delete 'arbtt_char_counts'
wp option delete 'arbtt_read_time'
wp option delete 'arbtt_view_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arbtt_post_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arbtt_post_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arbtt_post_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arbtt_post_views'"
