#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ca_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sucursal_pv_centro_ca_estandar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sucursal_pv_centro_ca_estandar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sucursal_pv_centro_ca_estandar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sucursal_pv_centro_ca_estandar'"
