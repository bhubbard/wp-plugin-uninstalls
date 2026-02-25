#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sn_gfp_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sn_gfp_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sn_gfp_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sn_gfp_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sn_gfp_gallery_images'"
