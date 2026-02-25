#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ghst_woocommerce_cities'
wp option delete 'ghst_woocommerce_user_token'
wp option delete 'ghst_woocommerce_city_info'
wp option delete 'woocommerce_ghst_shipping_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ghst_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ghst_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ghst_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ghst_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ghst_tracking_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ghst_tracking_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ghst_tracking_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ghst_tracking_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_state'"
