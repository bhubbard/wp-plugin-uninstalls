#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_product_shipping_information_global'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_hide_product_shipping_information'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_hide_product_shipping_information'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_hide_product_shipping_information'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_hide_product_shipping_information'"
