#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sd_auto_create_shipping'
wp option delete 'sd_status_auto_create_shipping'
wp option delete 'sd_setting_courier'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'sd_api_key'
wp option delete 'sd_accept_debug_log'
wp option delete 'sd_sender_info'
wp option delete 'sd_setting_fee'
wp option delete 'sd_list_couriers'
wp option delete 'sd_list_storages'
wp option delete 'cb_set_status_for_delivery'
wp option delete 'sd_status_for_delivery'
wp option delete 'cb_set_status_delivery_success'
wp option delete 'sd_status_delivery_success'
wp option delete 'sd_status_delivery_failed'
wp option delete 'cb_set_status_for_control'
wp option delete 'sd_status_for_control'
wp option delete 'sd_update_order_statuses'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_district'
wp option delete 'woocommerce_store_ward'
wp option delete 'sd_show_shipping_fee_detail'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_district'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_district'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_district'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_district'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_district'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_district'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_district'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_district'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_ward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_ward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_ward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_ward'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_ward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_ward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_ward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_ward'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sd_ship_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sd_ship_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sd_ship_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sd_ship_info'"
