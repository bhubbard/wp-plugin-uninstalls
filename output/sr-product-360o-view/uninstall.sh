#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sr_360_icon_1'
wp option delete 'sr_360_icon_2'
wp option delete 'sr_360_icon_custom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
