#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prgm_product_gallery_global'
wp option delete 'prgm_disable_Product_default_gallery'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_prgm_active_product_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_prgm_active_product_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_prgm_active_product_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_prgm_active_product_gallery'"
