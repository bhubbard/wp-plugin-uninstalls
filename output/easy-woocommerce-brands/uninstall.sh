#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewbct_permalink'
wp option delete 'ewbct_position'
wp option delete 'ewbct_style'
wp option delete 'ewbct_title'
wp option delete 'ewbct_width'
wp option delete 'ewbct_height'
wp option delete 'ewbct_image_style'
wp option delete 'ewbct_image_brands_columns'
wp option delete 'ewbct_brand_columns'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewbct_category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewbct_category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewbct_category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewbct_category-image-id'"
