#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddsp_allowed_post_types'
wp option delete 'ddsp_allowed_taxonomies'
wp option delete 'ddsp_enable_custom_search'
wp option delete 'ddsp_search_layout'
wp option delete 'ddsp_font_color'
wp option delete 'ddsp_button_bg_color'
wp option delete 'ddsp_grid_bg_color'
wp option delete 'ddsp_button_hover_color'
wp option delete 'ddsp_button_text_color'
wp option delete 'ddsp_button_hover_text_color'
wp option delete 'ddsp_search_gutenberg_templates'

