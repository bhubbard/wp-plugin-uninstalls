#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_shipping_envia_colvanes_ec_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guide_envia_colvanes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guide_envia_colvanes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guide_envia_colvanes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guide_envia_colvanes'"
