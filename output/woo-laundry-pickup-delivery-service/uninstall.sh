#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'byclaundryservice_pickup_time_slot_by_start'
wp option delete 'byclaundryservice_pickup_time_slot_by_end'
wp option delete 'byclaundryservice_delivery_time_slot_by_start'
wp option delete 'byclaundryservice_delivery_time_slot_by_end'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'bycwclaundryservice_general_holiday'
wp option delete 'byconsolewoolaundry_free_plugin_activation_date'
wp option delete 'byconsolewooodt_free_plugin_activation_date'
wp option delete 'byclaundryservice_date_format'
wp option delete 'byconsolewoolaundry_free_plugin_admin_access_date'
wp option delete 'byclaundryservice_admin_national_holiday_date'
wp option delete 'byclaundryservice_admin_casual_holiday_date'
wp option delete 'byclaundryservice_admin_national_holiday_delivery_date'
wp option delete 'byclaundryservice_admin_casual_holiday_delivery_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewclaundry_pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewclaundry_pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewclaundry_pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewclaundry_pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewclaundry_pickup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewclaundry_pickup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewclaundry_pickup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewclaundry_pickup_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewclaundry_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewclaundry_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewclaundry_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewclaundry_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'byconsolewclaundry_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'byconsolewclaundry_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'byconsolewclaundry_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'byconsolewclaundry_delivery_time'"
