<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('embedchessboard_horizontal_layout');
delete_site_option('embedchessboard_horizontal_layout');
delete_option('embedchessboard_height');
delete_site_option('embedchessboard_height');
delete_option('embedchessboard_background_color');
delete_site_option('embedchessboard_background_color');
delete_option('embedchessboard_light_squares_color');
delete_site_option('embedchessboard_light_squares_color');
delete_option('embedchessboard_dark_squares_color');
delete_site_option('embedchessboard_dark_squares_color');
delete_option('embedchessboard_board_border_color');
delete_site_option('embedchessboard_board_border_color');
delete_option('embedchessboard_square_highlight_color');
delete_site_option('embedchessboard_square_highlight_color');
delete_option('embedchessboard_control_buttons_background_color');
delete_site_option('embedchessboard_control_buttons_background_color');
delete_option('embedchessboard_control_buttons_text_color');
delete_site_option('embedchessboard_control_buttons_text_color');
delete_option('embedchessboard_header_text_color');
delete_site_option('embedchessboard_header_text_color');
delete_option('embedchessboard_moves_text_color');
delete_site_option('embedchessboard_moves_text_color');
delete_option('embedchessboard_move_highlight_color');
delete_site_option('embedchessboard_move_highlight_color');
delete_option('embedchessboard_comments_text_color');
delete_site_option('embedchessboard_comments_text_color');
delete_option('embedchessboard_autoplay_mode');
delete_site_option('embedchessboard_autoplay_mode');
delete_option('embedchessboard_container_style');
delete_site_option('embedchessboard_container_style');
delete_option('embedchessboard_extended_options');
delete_site_option('embedchessboard_extended_options');

