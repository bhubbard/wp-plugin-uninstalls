#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_samedaycourier_settings'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_samedaycourier_settings_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sameday_shipping_open_package_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sameday_shipping_open_package_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sameday_shipping_open_package_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sameday_shipping_open_package_option'"
