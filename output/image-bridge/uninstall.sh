#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image-bridge-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image-bridge-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image-bridge-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image-bridge-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image-bridge-alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image-bridge-alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image-bridge-alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image-bridge-alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image-bridge-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image-bridge-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image-bridge-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image-bridge-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_gallery'"
