-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tp_scroll_top_option_enable', 'tp_scroll_top_visibility_fade_speed', 'tp_scroll_top_scroll_fade_speed', 'tp_scroll_top_scroll_position', 'tp_scroll_top_scrollbg', 'tp_scroll_top_scrollbg_hover', 'tp_scroll_top_scrollradious', 'tp_scroll_top_visibility_trigger');

