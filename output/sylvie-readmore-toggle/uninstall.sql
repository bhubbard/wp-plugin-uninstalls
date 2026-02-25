-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('readmore_btn_bg', 'readmore_btn_bg_hover', 'readmore_btn_color', 'readmore_btn_color_hover', 'readmore_btn_size', 'readmore_btn_padding');

