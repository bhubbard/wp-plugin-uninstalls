#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_andreani_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sucursal_andreani_c'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sucursal_andreani_c'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sucursal_andreani_c'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sucursal_andreani_c'"
