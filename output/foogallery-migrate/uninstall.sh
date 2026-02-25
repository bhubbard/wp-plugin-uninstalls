#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modula-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsg_galleryImages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsg_galleryImages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsg_galleryImages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsg_galleryImages'"
