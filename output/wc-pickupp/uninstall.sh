#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pickupp_region'
wp option delete 'pickupp_api_key'
wp option delete 'pickupp_auth_method'
wp option delete 'pickup_contact_person'
wp option delete 'pickup_contact_phone'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pickupp_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pickupp_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pickupp_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pickupp_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pickupp_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pickupp_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pickupp_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pickupp_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_already_sent_with_pickupp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_already_sent_with_pickupp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_already_sent_with_pickupp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_already_sent_with_pickupp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_height'"
