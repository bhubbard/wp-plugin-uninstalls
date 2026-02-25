#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orbit_slider_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orbit_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orbit_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orbit_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orbit_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orbit_slider_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orbit_slider_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orbit_slider_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orbit_slider_meta'"
