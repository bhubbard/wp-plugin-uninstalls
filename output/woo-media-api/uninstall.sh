#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_profile_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_profile_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_profile_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_profile_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woopos_product_last_set_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woopos_product_last_set_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woopos_product_last_set_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woopos_product_last_set_stock'"
