#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_tube_user'
wp option delete 'wp_tube_cat'
wp option delete 'wp_tube_lud'
wp option delete 'wp_tube_default_player'
wp option delete 'wp_tube_player_colors'
wp option delete 'wp_tube_player_width_x'
wp option delete 'wp_tube_player_width_y'
wp option delete 'wp_tube_bump'
wp option delete 'wp_tube_custom_player'
wp option delete 'wp_tube_dbv'

