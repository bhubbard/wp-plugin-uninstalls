#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rmwr-notice-dismissed-alert'
wp option delete 'rm_text'
wp option delete 'rl_text'
wp option delete 'rmwr_smooth_scroll_free'
wp option delete 'rmwr_print_expand_free'
wp option delete 'rmwr_font_weight'
wp option delete 'rmwr_text_color'
wp option delete 'rmwr_text_hover_color'
wp option delete 'rmwr_background_color'
wp option delete 'rmwr_padding'
wp option delete 'rmwr_border_bottom'
wp option delete 'rmwr_border_bottom_color'

