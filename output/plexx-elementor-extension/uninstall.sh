#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themeworm_slug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plexx_gallery_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plexx_gallery_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plexx_gallery_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plexx_gallery_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plexx_featured_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plexx_featured_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plexx_featured_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plexx_featured_gallery'"
