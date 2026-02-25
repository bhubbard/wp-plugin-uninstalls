#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_storeya_config'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_base_country'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_storeya_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_storeya_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_storeya_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_storeya_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
