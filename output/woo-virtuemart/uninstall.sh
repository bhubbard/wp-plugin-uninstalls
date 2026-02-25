#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vtm_Host'
wp option delete 'vtm_db'
wp option delete 'vtm_dbUser'
wp option delete 'vtm_dbPass'
wp option delete 'vrm_prefix'
wp option delete 'tax_ids'
wp option delete 'product_cat_children'
wp option delete '_transient_wc_attribute_taxonomies'
wp option delete 'attribute_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
