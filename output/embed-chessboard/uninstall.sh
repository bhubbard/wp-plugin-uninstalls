#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embedchessboard_horizontal_layout'
wp option delete 'embedchessboard_height'
wp option delete 'embedchessboard_background_color'
wp option delete 'embedchessboard_light_squares_color'
wp option delete 'embedchessboard_dark_squares_color'
wp option delete 'embedchessboard_board_border_color'
wp option delete 'embedchessboard_square_highlight_color'
wp option delete 'embedchessboard_control_buttons_background_color'
wp option delete 'embedchessboard_control_buttons_text_color'
wp option delete 'embedchessboard_header_text_color'
wp option delete 'embedchessboard_moves_text_color'
wp option delete 'embedchessboard_move_highlight_color'
wp option delete 'embedchessboard_comments_text_color'
wp option delete 'embedchessboard_autoplay_mode'
wp option delete 'embedchessboard_container_style'
wp option delete 'embedchessboard_extended_options'

