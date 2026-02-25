#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_product_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shopc_category_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shopc_category_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shopc_category_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shopc_category_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcm_category_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcm_category_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcm_category_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcm_category_order'"
