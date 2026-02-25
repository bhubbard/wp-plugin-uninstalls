-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scroll_to_top_font_size', 'scroll_to_top_btn_color', 'scroll_to_top_icon_color', 'scroll_to_top_hvr_icon_color', 'scroll_to_top_hvr_color', 'scroll_to_top_speed', 'scroll_to_top_icon', 'scroll_to_top_value_exclude');

