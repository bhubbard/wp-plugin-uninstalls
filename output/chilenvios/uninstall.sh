#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multicourier_shipping_calculator_settings'
wp option delete 'mi_plugin_activado'
wp option delete 'multicourier_district_keys'

# Delete Transients
wp transient delete 'multicourier_shipping_calculator_states'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_multicourier_districts_%' OR option_name LIKE '_site_transient_multicourier_districts_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_estado'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_estado'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_estado'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_estado'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_estado_nombre'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_estado_nombre'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_estado_nombre'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_estado_nombre'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_distrito'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_distrito_nombre'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_distrito_nombre'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_distrito_nombre'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_distrito_nombre'"
