#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WRRS_RTE_JWT'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_time'"
