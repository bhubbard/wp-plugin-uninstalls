#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_location'
wp option delete 'mobile_width'
wp option delete 'menu_id'
wp option delete 'menu_background'
wp option delete 'menu_background_hover'
wp option delete 'menu_item_color'
wp option delete 'menu_item_color_hover'

