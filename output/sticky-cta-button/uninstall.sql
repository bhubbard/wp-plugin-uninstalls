-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_sticky_button_enabled', 'wp_sticky_button_text', 'wp_sticky_button_icon', 'wp_sticky_button_link', 'wp_sticky_button_target', 'wp_sticky_button_bg_color', 'wp_sticky_button_text_color', 'wp_sticky_button_back_to_top', 'wp_sticky_button_back_icon', 'wp_sticky_button_position', 'wp_sticky_button_display_behavior', 'wp_sticky_button_combined_layout', 'wp_sticky_button_vertical_order', 'wp_sticky_button_horizontal_order', 'wp_sticky_button_offset_x', 'wp_sticky_button_offset_y', 'wp_sticky_button_radius_enabled', 'wp_sticky_button_radius_value');

