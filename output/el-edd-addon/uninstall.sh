#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'el_edd_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'health-check-allowed-plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_variable_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_el_product_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_el_product_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_el_product_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_el_product_license'"
