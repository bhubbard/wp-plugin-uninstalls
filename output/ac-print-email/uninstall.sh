#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acpe_enable_posts'
wp option delete 'acpe_enable_pages'
wp option delete 'acpe_enable_category'
wp option delete 'acpe_enable_tag'
wp option delete 'acpe_position'
wp option delete 'acpe_providers'
wp option delete 'acpe_icon_style'
wp option delete 'acpe_display_mode'
wp option delete 'acpe_text_color'
wp option delete 'acpe_menu_bg'
wp option delete 'acpe_placement'

