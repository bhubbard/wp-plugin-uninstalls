#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pakke_shipping_settings'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_colonia'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_colonia'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_colonia'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_colonia'"
