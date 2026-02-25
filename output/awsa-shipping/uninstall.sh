#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'PW_Options'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_weight_unit'
wp option delete 'dokan_pages'
wp option delete 'awsa_shipping_settings'
wp option delete 'woocommerce_store_city'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_awsa_parcel_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_awsa_parcel_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_awsa_parcel_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_awsa_parcel_code'"
