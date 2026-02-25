#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shop_ux_toolkit_options'
wp option delete 'woocommerce_shop_page_display'

# Delete Transients
wp transient delete 'shop_ux_toolkit_review_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
