-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('back_to_top_background_color', 'back_to_top_button_color', 'back_to_top_button_speed', 'back_to_top_button_radius', 'back_to_top_option_position', 'back_to_top_button_load1', 'back_to_top_button_opacity', 'back_to_top_button_width', 'back_to_top_button_height', 'back_to_top_button_font_size', 'back_to_top_button_position_right', 'back_to_top_button_position_left', 'back_to_top_button_position_bottom');

