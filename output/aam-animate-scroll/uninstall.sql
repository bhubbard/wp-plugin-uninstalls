-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aam_scroll_section', 'aam_scroll_text', 'aam_scroll_animation_speed', 'aam_scroll_style', 'aam_scroll_position', 'aam_scroll_bg_color', 'aam_scroll_font_color', 'custom_css', 'scroll_icon', 'aam_scroll_icon_size');

