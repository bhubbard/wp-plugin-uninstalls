#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vwi_vend_connect_subdomain'
wp option delete 'vwi_vend_connect_token'
wp option delete 'vwi_vend_connect_cashier'
wp option delete 'vwi_vend_last_import_finish'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_vend_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_vend_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_vend_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_vend_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_current_vend_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_current_vend_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_current_vend_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_current_vend_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imported_images_versions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imported_images_versions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imported_images_versions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imported_images_versions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vend_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vend_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vend_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vend_id'"
