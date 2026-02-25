#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_tab_shipday_enable_pickup'
wp option delete 'wc_settings_tab_shipday_sync'
wp option delete 'wc_settings_tab_shipday_order_manage'
wp option delete 'wc_settings_tab_shipday_api_key'
wp option delete 'wc_settings_tab_shipday_rest_api_consumer_key'
wp option delete 'wc_settings_tab_shipday_rest_api_consumer_secret'
wp option delete 'shipday_enable_datetime_plugin'
wp option delete 'shipday_enable_delivery_option'
wp option delete 'shipday_delivery_pickup_label'
wp option delete 'shipday_enable_delivery_date'
wp option delete 'shipday_delivery_date_mandatory'
wp option delete 'shipday_avaialble_delivery_days'
wp option delete 'shipday_enable_delivery_time'
wp option delete 'shipday_delivery_time_mandatory'
wp option delete 'shipday_enable_pickup_date'
wp option delete 'shipday_pickup_date_mandatory'
wp option delete 'shipday_avaialble_pickup_days'
wp option delete 'shipday_enable_pickup_time'
wp option delete 'shipday_pickup_time_mandatory'
wp option delete 'shipday_selectable_delivery_days'
wp option delete 'shipday_delivery_time_slot_start'
wp option delete 'shipday_delivery_time_slot_end'
wp option delete 'shipday_delivery_time_slot_duration'
wp option delete 'shipday_selectable_pickup_days'
wp option delete 'shipday_pickup_time_slot_start'
wp option delete 'shipday_pickup_time_slot_end'
wp option delete 'shipday_pickup_time_slot_duration'
wp option delete 'wc_settings_tab_shipday_enable_delivery'
wp option delete 'orddd_lite_delivery_date_field_label'
wp option delete 'orddd_delivery_date_field_label'
wp option delete 'wc_settings_tab_shipday_enable_webhook'
wp option delete 'woocommerce_store_phone'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_settings_tab_shipday_registered_uuid'
wp option delete 'woocommerce_version'
wp option delete 'shipday_registered_uuid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_timeslot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_timeslot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_timeslot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_timeslot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_orddd_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_orddd_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_orddd_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_orddd_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipday_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipday_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipday_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipday_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipday_order_sync_prevent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipday_order_sync_prevent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipday_order_sync_prevent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipday_order_sync_prevent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wfs_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wfs_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wfs_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wfs_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipday_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipday_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipday_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipday_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipday_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipday_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipday_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipday_delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipday_order_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipday_order_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipday_order_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipday_order_type'"
