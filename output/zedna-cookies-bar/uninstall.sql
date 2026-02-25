-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zedna_cookies_bar_message', 'zedna_cookies_bar_button', 'zedna_cookies_bar_close', 'zedna_cookies_bar_close_color', 'zedna_cookies_bar_btn_bg_color', 'zedna_cookies_bar_btn_text_color', 'zedna_cookies_bar_bg_color', 'zedna_cookies_bar_text_color', 'zedna_cookies_bar_link_color', 'zedna_cookies_bar_position', 'zedna_cookies_bar_custom_css', 'zedna_cookies_bar_show_button', 'zedna_cookies_bar_custom_js');

