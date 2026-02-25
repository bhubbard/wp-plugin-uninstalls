-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_to_top_bg_color', 'wp_to_top_fg_color', 'wp_to_top_scroll_duration', 'wp_to_top_icon_type', 'wp_to_top_icon_size', 'wp_to_top_icon_location');

