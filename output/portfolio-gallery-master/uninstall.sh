#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgm_notice_get_pro_version_dismissed'
wp option delete 'pgm_portfolio_initial_width'
wp option delete 'pgm_portfolio_initial_height'
wp option delete 'pgm_portfolio_margin'
wp option delete 'pgm_portfolio_padding'
wp option delete 'pgm_portfolio_overlay_font_color'
wp option delete 'pgm_portfolio_frame_color'
wp option delete 'pgm_portfolio_overlay_color'
wp option delete 'pgm_disable_hover_display'
wp option delete 'pgm_disable_post_link'
wp option delete 'pgm_portfolio_display_mode'
wp option delete 'pgm_display_per_row'
wp option delete 'pgm_display_min_width'
wp option delete 'pgm_display_max_width'

