#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_design'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_design'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_design'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_design'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photogallery_albums'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photogallery_albums'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photogallery_albums'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photogallery_albums'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photoalbum_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photoalbum_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photoalbum_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photoalbum_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_photoalbum_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_photoalbum_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_photoalbum_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_photoalbum_images'"
