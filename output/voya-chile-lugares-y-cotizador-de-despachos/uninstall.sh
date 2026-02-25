#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_voya_despachos_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suubi_courier_shipping_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suubi_courier_shipping_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suubi_courier_shipping_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suubi_courier_shipping_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remitente_nombre'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remitente_nombre'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remitente_nombre'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remitente_nombre'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remitente_rut'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remitente_rut'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remitente_rut'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remitente_rut'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remitente_telefono'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remitente_telefono'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remitente_telefono'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remitente_telefono'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remitente_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remitente_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remitente_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remitente_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remitente_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remitente_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remitente_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remitente_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remitente_comuna'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remitente_comuna'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remitente_comuna'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remitente_comuna'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remitente_direccion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remitente_direccion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remitente_direccion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remitente_direccion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_suubi_final_package_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_suubi_final_package_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_suubi_final_package_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_suubi_final_package_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voya_shipping_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voya_shipping_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voya_shipping_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voya_shipping_label'"
