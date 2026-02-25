#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rbtc_enable_plugin'
wp option delete 'rbtc_enable_bold_color'
wp option delete 'rbtc_enable_heading_gradient'
wp option delete 'rbtc_enable_paragraph_color'
wp option delete 'rbtc_enable_dark_mode_style'
wp option delete 'rbtc_custom_gradient_colors'
wp option delete 'rbtc_max_colored_paragraphs'
wp option delete 'rbtc_enable_easter_egg'
wp option delete 'rbtc_easter_egg_unlocked'

