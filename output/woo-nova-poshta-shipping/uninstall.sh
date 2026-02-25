#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_nova_poshta_shipping_settings'
wp option delete 'woocommerce_nova_poshta_shipping_method_settings'
wp option delete 'woocommerce_novaposhta_settings'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'warehouse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'warehouse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'warehouse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'warehouse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shippingType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shippingType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shippingType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shippingType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wnps-shipping-cargotype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wnps-shipping-cargotype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wnps-shipping-cargotype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wnps-shipping-cargotype'"
