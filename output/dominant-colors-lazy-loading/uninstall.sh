#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dominant_colors_placeholder_format'
wp option delete 'dominant_colors_placeholder_fallback'
wp option delete 'dominant_colors_placeholder_noscript'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dominant_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dominant_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dominant_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dominant_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tiny_thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tiny_thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tiny_thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tiny_thumbnails'"
