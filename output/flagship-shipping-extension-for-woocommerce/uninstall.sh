#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_store_name'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_attn'
wp option delete 'woocommerce_store_phone'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flagship_shipping_shipment_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flagship_shipping_shipment_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flagship_shipping_shipment_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flagship_shipping_shipment_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flagship_shipping_courier_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flagship_shipping_courier_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flagship_shipping_courier_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flagship_shipping_courier_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flagship_shipping_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flagship_shipping_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flagship_shipping_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flagship_shipping_shipment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flagship_shipping_courier_service_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flagship_shipping_courier_service_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flagship_shipping_courier_service_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flagship_shipping_courier_service_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flagship_shipping_pickup_confirmation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flagship_shipping_pickup_confirmation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flagship_shipping_pickup_confirmation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flagship_shipping_pickup_confirmation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rates'"
