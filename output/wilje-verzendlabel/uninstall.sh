#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_company_name'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postnl_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postnl_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postnl_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postnl_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'barcode_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'barcode_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'barcode_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'barcode_type'"
