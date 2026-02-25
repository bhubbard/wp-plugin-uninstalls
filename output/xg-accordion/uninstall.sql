-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qvt_title_font_size', 'qvt_price_font_size', 'qvt_descr_font_size', 'qvt_btn_font_size', 'qvt_meta_font_size', 'qvt_tag_font_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('xga_short_category', 'xga_short_theme', 'xga_short_total', 'xga_short_title_color', 'xga_short_title_active_color', 'xga_short_title_bg_color', 'xga_short_active_title_bg_color', 'xga_short_border_color', 'xga_short_descr_color', 'xga_short_descr_bg_color', 'xga_short_title_font_size', 'xga_short_descr_font_size', 'is_open_initial');
DELETE FROM wp_usermeta WHERE meta_key IN ('xga_short_category', 'xga_short_theme', 'xga_short_total', 'xga_short_title_color', 'xga_short_title_active_color', 'xga_short_title_bg_color', 'xga_short_active_title_bg_color', 'xga_short_border_color', 'xga_short_descr_color', 'xga_short_descr_bg_color', 'xga_short_title_font_size', 'xga_short_descr_font_size', 'is_open_initial');
DELETE FROM wp_termmeta WHERE meta_key IN ('xga_short_category', 'xga_short_theme', 'xga_short_total', 'xga_short_title_color', 'xga_short_title_active_color', 'xga_short_title_bg_color', 'xga_short_active_title_bg_color', 'xga_short_border_color', 'xga_short_descr_color', 'xga_short_descr_bg_color', 'xga_short_title_font_size', 'xga_short_descr_font_size', 'is_open_initial');
DELETE FROM wp_commentmeta WHERE meta_key IN ('xga_short_category', 'xga_short_theme', 'xga_short_total', 'xga_short_title_color', 'xga_short_title_active_color', 'xga_short_title_bg_color', 'xga_short_active_title_bg_color', 'xga_short_border_color', 'xga_short_descr_color', 'xga_short_descr_bg_color', 'xga_short_title_font_size', 'xga_short_descr_font_size', 'is_open_initial');

