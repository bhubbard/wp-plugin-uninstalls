#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sort'
wp option delete 'order'
wp option delete 'timeout'
wp option delete 'fading_slider_width'
wp option delete 'fading_slider_height'
wp option delete 'fading_slider_bg'
wp option delete 'fading_slider_border'
wp option delete 'text_width'
wp option delete 'text_color'
wp option delete 'img_width'
wp option delete 'img_height'
wp option delete 'limit'
wp option delete 'points'
wp option delete 'limit_posts'
wp option delete 'auto_switch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fading_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fading_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fading_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fading_slider'"
