-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jialistt_button_bg', 'jialistt_button_color', 'jialistt_button_size', 'jialistt_font_size', 'jialistt_position', 'jialistt_bottom_distance', 'jialistt_side_distance', 'jialistt_shape');

