#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'co_chessboard_size'
wp option delete 'co_chessboard_alignment'
wp option delete 'co_lightsquare_color'
wp option delete 'co_darksquare_color'
wp option delete 'co_display_infolabel'
wp option delete 'co_link_text'
wp option delete 'co_link_url'
wp option delete 'co_link_target'

