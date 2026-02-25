#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'RemoveBG_ApiKey'
wp option delete 'RemoveBG_products'
wp option delete 'RemoveBG_products_IDs'
wp option delete 'RemoveBG_thumbnail'
wp option delete 'RemoveBG_gallery'
wp option delete 'RemoveBG_Background'
wp option delete 'RemoveBG_Background_Color'
wp option delete 'RemoveBG_Preserve_Resize'
wp option delete 'RemoveBG_Include_Processed'
wp option delete 'RemoveBG_Background_Image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
