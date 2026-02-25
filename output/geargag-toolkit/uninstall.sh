#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geargag_search'
wp option delete 'geargag_delete_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geargag_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geargag_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geargag_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geargag_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_updated'"
