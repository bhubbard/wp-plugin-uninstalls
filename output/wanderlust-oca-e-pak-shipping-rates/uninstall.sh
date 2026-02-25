#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_oca_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sucursal_pv_centro_oca_estandar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sucursal_pv_centro_oca_estandar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sucursal_pv_centro_oca_estandar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sucursal_pv_centro_oca_estandar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sucursal_oca_c'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sucursal_oca_c'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sucursal_oca_c'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sucursal_oca_c'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chosen_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chosen_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chosen_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chosen_shipping'"
