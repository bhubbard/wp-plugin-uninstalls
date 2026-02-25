#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hover_text'
wp option delete 'button_width'
wp option delete 'button_height'
wp option delete 'bg_color'
wp option delete 'bg_color_hover'
wp option delete 'border_radius'
wp option delete 'icon_image'
wp option delete 'icon_color'
wp option delete 'icon_hover_color'
wp option delete 'button_alignment'

