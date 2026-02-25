-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clb_version', 'clb_bar_msg', 'clb_bar_pos', 'clb_bar_color', 'clb_bar_text_color', 'clb_btn_msg', 'clb_btn_color', 'clb_btn_text_color');

