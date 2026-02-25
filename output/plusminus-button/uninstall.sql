-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iv_spinner_margin_top', 'iv_spinner_margin_left', 'iv_spinner_margin_bottom', 'iv_spinner_margin_right', 'iv_spinner_font', 'iv_spinner_font_size', 'iv_spinner_color', 'iv_spinner_background');

