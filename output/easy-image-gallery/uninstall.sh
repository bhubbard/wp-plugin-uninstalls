#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy-image-gallery'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_image_gallery_v2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_image_gallery_v2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_image_gallery_v2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_image_gallery_v2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_image_gallery_link_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_image_gallery_link_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_image_gallery_link_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_image_gallery_link_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
