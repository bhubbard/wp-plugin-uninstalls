#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_hcgroup_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iddespacho_hcgroup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iddespacho_hcgroup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iddespacho_hcgroup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iddespacho_hcgroup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_total_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_total_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_total_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_total_weight'"
