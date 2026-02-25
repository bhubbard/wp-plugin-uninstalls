#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_email_from_address'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chosen_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nro_envio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nro_envio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nro_envio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nro_envio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url_etiqueta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url_etiqueta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url_etiqueta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url_etiqueta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_params_andreani'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_dni'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_dni'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_dni'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_dni'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sucursal_andreani'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sucursal_andreani'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sucursal_andreani'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sucursal_andreani'"
