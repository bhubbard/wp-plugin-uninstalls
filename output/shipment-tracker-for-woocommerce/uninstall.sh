#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bt_sst_activated_time'
wp option delete '_bt_sst_shiprocket_active_courier_companies'
wp option delete 'bt_sst_order_and_shipp_status_keys_array'
wp option delete 'register_for_sms_apy_key'
wp option delete 'bt_sst_check_skip_or_not'
wp option delete 'bt_sst_shipment_status_mode_map'
wp option delete 'bt_sst_manual_coriures_names_array'
wp option delete 'bt_sst_order_status_list'
wp option delete 'bt_sst_timer_settings'
wp option delete '_bt_sst_shiprocket_pincode_checker'
wp option delete '_bt_sst_tracking_page'
wp option delete '_bt_sst_default_shipping_provider'
wp option delete '_bt_sst_enable_auto_postcode_fill'
wp option delete '_bt_sst_show_shipment_weight'
wp option delete '_bt_sst_select_courier_company'
wp option delete '_bt_sst_generic_google_key'
wp option delete 'product_url_etd'
wp option delete 'bt_sst_is_premium'
wp option delete '_bt_sst_ship24_active_courier_companies'
wp option delete 'bt_sst_product_page_pincode_checker_logs'
wp option delete 'woocommerce_store_postcode'
wp option delete 'bt_sst_premium_grace_start_time'
wp option delete 'bt-sync-shipment-tracking-random-route'
wp option delete 'bt-sync-shipment-tracking-random-secret-key'
wp option delete 'bt-sync-shipment-tracking-random-manual-secret-key'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'shiprocket_webhook_called'
wp option delete 'nimbuspost_webhook_called'
wp option delete 'nimbuspost_new_webhook_called'
wp option delete 'xpressbees_webhook_called'
wp option delete 'shipmozo_webhook_called'
wp option delete 'delhivery_webhook_called'
wp option delete 'ekart_webhook_called'
wp option delete 'courierkaro_webhook_called'
wp option delete 'proship_webhook_called'
wp option delete 'ship24_webhook_called'
wp option delete 'generated_access_token_object'
wp option delete 'bt_ekart_seller_gst'
wp option delete '_bt_sst_shiprocket_apiusername'
wp option delete '_bt_sst_shiprocket_apipassword'
wp option delete '_bt_sst_shiprocket_channelid'
wp option delete 'carbon_custom_sidebars'

# Delete Transients
wp transient delete 'bt_sst_shiprocket_courier_companies'
wp transient delete 'bt_sst_shiprocket_auth_token'
wp transient delete 'bt_sst_shiprocket_courier_companies_fetched'
wp transient delete 'bt-sst-woocommerce-not-installed-notice'
wp transient delete 'bt_sst_cached_pincodes'
wp transient delete 'bt_sst_cached_delivery_estimates'
wp transient delete 'bt_sst_cached_delivery_estimates_shipmozo'
wp transient delete 'bt_sst_cached_delivery_estimates_nimbuspost'
wp transient delete 'bt_sst_cached_delivery_estimates_delhivery'
wp transient delete 'bt_sst_cached_delivery_estimates_fship'
wp transient delete 'bt_sst_cached_ekart_estimates_delhivery'
wp transient delete 'bt_sst_cached_delivery_estimates_proship'
wp transient delete 'bt_sst_cached_delivery_estimates_nimbuspost_new'

# Clear Cron Jobs
wp cron event delete 'bt_push_order_to_shiprocket'
wp cron event delete 'bt_push_order_to_shipmozo'
wp cron event delete 'bt_push_order_to_nimbuspost'
wp cron event delete 'bt_push_order_to_delhivery'
wp cron event delete 'bt_push_order_to_ekart'
wp cron event delete 'bt_push_order_to_courierkaro'
wp cron event delete 'bt_push_order_to_proship'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_pickup_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_pickup_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_pickup_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_pickup_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bt_sst_product_category_processing_days_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bt_sst_product_category_processing_days_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bt_sst_product_category_processing_days_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bt_sst_product_category_processing_days_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
