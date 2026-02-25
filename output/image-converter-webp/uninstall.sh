#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icfw'
wp option delete 'webp_img_converter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webp_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webp_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webp_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webp_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'icfw_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'icfw_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'icfw_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'icfw_img'"
