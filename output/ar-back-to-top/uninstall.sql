-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arbtt_custom_css', 'arbtt_enable', 'arbtt_progress_color', 'arbtt_enable_scroll_progress', 'arbtt_enable_scroll_progress_size', 'arbtt_is_async', 'arbtt_bgc', 'arbtt_bgc_hover', 'arbtt_clr', 'arbtt_clr_hover', 'arbtt_bdr', 'arbtt_bdr_color', 'arbtt_bdr_color_hover', 'arbtt_bdrd', 'arbtt_btnps', 'arbtt_btn_offset_bottom', 'arbtt_btn_offset_right', 'arbtt_btn_offset_left', 'arbtt_btnapr', 'arbtt_btndm', 'arbtt_btn_padding', 'arbtt_btnoc', 'arbtt_fi', 'arbtt_btntx', 'arbtt_btn_ext_img_url', 'arbtt_btn_img', 'arbtt_btn_img_position', 'arbtt_fadein', 'arbtt_fz', 'arbtt_hide_on_phone', 'arbtt_hide_on_tablet', 'arbtt_pwidth', 'arbtt_twidth', 'arbtt_btnst', 'arbtt_do_activation_redirect', 'arbtt', 'arbtt_btnwidth', 'arbtt_btnheight', 'arbtt_meta_position', 'arbtt_word_count', 'arbtt_char_counts', 'arbtt_read_time', 'arbtt_view_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_arbtt_post_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_arbtt_post_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_arbtt_post_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_arbtt_post_views');

