#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfs_effect'
wp option delete 'sfs_slideshowSpeed'
wp option delete 'sfs_animationSpeed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfs_gallery_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfs_gallery_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfs_gallery_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfs_gallery_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfs_slider_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfs_slider_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfs_slider_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfs_slider_meta'"
