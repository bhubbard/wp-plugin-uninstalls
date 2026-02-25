#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'content_width'
wp option delete 'content_bg'
wp option delete 'content_height'
wp option delete 'content_img_width'
wp option delete 'content_nav_width'
wp option delete 'content_nav_height'
wp option delete 'content_nav_color'
wp option delete 'content_nav_bg'
wp option delete 'content_nav_active_bg'
wp option delete 'content_nav_active_color'
wp option delete 'content_sort'
wp option delete 'content_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_slider'"
