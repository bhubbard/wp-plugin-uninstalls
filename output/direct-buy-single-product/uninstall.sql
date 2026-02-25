-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buy_now_button_text', 'buy_now_button_bg_color', 'buy_now_button_text_color', 'buy_now_button_margin_top', 'buy_now_button_padding', 'buy_now_button_border_color', 'buy_now_button_border_width', 'buy_now_button_font_size', 'buy_now_button_font_weight', 'buy_now_button_border_radius');

