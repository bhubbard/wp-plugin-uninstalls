#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smarthgw_db_version'
wp option delete 'smarthgw_auto_delete_images'
wp option delete 'smarthgw_woo_gallery_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
