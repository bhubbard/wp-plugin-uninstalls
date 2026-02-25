#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dismissed-tcg_disclaimer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'active_sitewide_plugins'
wp option delete 'dimative_shipping_instance_form_fields_filters'
wp option delete 'dismissed-csm_disclaimer'
wp option delete 'woocommerce_wcis_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_insurance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_insurance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_insurance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_insurance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_insurance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_insurance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_insurance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_insurance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_single_parcel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insuranceCost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insuranceCost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insuranceCost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insuranceCost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swagger_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swagger_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swagger_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swagger_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_shipping_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_shipping_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_shipping_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_shipping_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dawpro_waybill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dawpro_waybill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dawpro_waybill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dawpro_waybill'"
