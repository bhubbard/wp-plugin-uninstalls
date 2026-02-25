#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'currency_type'
wp option delete 'imperative_activation_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_product_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_product_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_product_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_product_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_special_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_special_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_special_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_special_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_stock'"
