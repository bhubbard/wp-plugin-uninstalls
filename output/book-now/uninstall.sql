-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rg_book_enable', 'rg_book_text', 'rg_book_url', 'rg_left_right', 'rg_book_color', 'rg_text_color', 'rg_book_bottom', 'rg_page_id', 'rg_target', 'rg_width', 'rg_font_size', 'rg_font_size_m', 'rg_btn_pad', 'rg_btn_pad_m', 'rg_font_family');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('my_meta_box_enable', 'my_meta_box_text', 'my_meta_box_url', 'my_meta_box_bg', 'my_meta_box_txtcolor', 'my_meta_box_font_size', 'my_meta_box_font_size_m', 'my_meta_box_btn_pad', 'my_meta_box_btn_pad_m', 'my_meta_box_target', 'my_meta_box_width');
DELETE FROM wp_usermeta WHERE meta_key IN ('my_meta_box_enable', 'my_meta_box_text', 'my_meta_box_url', 'my_meta_box_bg', 'my_meta_box_txtcolor', 'my_meta_box_font_size', 'my_meta_box_font_size_m', 'my_meta_box_btn_pad', 'my_meta_box_btn_pad_m', 'my_meta_box_target', 'my_meta_box_width');
DELETE FROM wp_termmeta WHERE meta_key IN ('my_meta_box_enable', 'my_meta_box_text', 'my_meta_box_url', 'my_meta_box_bg', 'my_meta_box_txtcolor', 'my_meta_box_font_size', 'my_meta_box_font_size_m', 'my_meta_box_btn_pad', 'my_meta_box_btn_pad_m', 'my_meta_box_target', 'my_meta_box_width');
DELETE FROM wp_commentmeta WHERE meta_key IN ('my_meta_box_enable', 'my_meta_box_text', 'my_meta_box_url', 'my_meta_box_bg', 'my_meta_box_txtcolor', 'my_meta_box_font_size', 'my_meta_box_font_size_m', 'my_meta_box_btn_pad', 'my_meta_box_btn_pad_m', 'my_meta_box_target', 'my_meta_box_width');

