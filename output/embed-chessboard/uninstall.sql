-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embedchessboard_horizontal_layout', 'embedchessboard_height', 'embedchessboard_background_color', 'embedchessboard_light_squares_color', 'embedchessboard_dark_squares_color', 'embedchessboard_board_border_color', 'embedchessboard_square_highlight_color', 'embedchessboard_control_buttons_background_color', 'embedchessboard_control_buttons_text_color', 'embedchessboard_header_text_color', 'embedchessboard_moves_text_color', 'embedchessboard_move_highlight_color', 'embedchessboard_comments_text_color', 'embedchessboard_autoplay_mode', 'embedchessboard_container_style', 'embedchessboard_extended_options');

