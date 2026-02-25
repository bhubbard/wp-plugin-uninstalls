#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gls_shipping_method_settings'
wp option delete 'woocommerce_gls_shipping_method_parcel_shop_settings'
wp option delete 'woocommerce_gls_shipping_method_parcel_locker_settings'
wp option delete 'woocommerce_gls_shipping_method_parcel_shop_zones_settings'
wp option delete 'woocommerce_gls_shipping_method_parcel_locker_zones_settings'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gls_restrict_parcel_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gls_restrict_parcel_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gls_restrict_parcel_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gls_restrict_parcel_shipping'"
