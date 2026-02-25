#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mp_enviroment'
wp option delete 'woocommerce_weight_unit'
wp option delete 'mpq_pickup'
wp option delete 'mpq_value_select'
wp option delete 'mp_id'
wp option delete 'mp_email'
wp option delete 'mp_api_key'
wp option delete 'free_shipping'
wp option delete 'woocommerce_shipping_mipaquete_wc_settings'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_declared_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_declared_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_declared_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_declared_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sending_mipaquete_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sending_mipaquete_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sending_mipaquete_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sending_mipaquete_status'"
