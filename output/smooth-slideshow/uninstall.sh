#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'axc_slideshow_width'
wp option delete 'axc_slideshow_height'
wp option delete 'axc_slideshow_border_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slide'"
