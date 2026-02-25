#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tofw_radio_switch_demo'
wp option delete 'wps_tofw_enable_order_delay_notification'
wp option delete 'wps_tofw_enable_use_of_icon'
wp option delete 'wps_tofw_new_custom_order_image'
wp option delete 'wps_tofw_is_plugin_enable'
wp option delete 'wps_tofw_enable_track_order_using_order_id'
wp option delete 'wps_tofw_enable_login_export'
wp option delete 'wps_tofw_enable_guest_export'
wp option delete 'wps_tofw_enable_invoice_tracking_info'
wp option delete 'wps_tofw_email_notifier'
wp option delete 'tofw_invoice_template'
wp option delete 'tofw_enable_partial_shipment'
wp option delete 'tofw_aut_comp_part_order'
wp option delete 'tofw_part_order_status'
wp option delete 'wps_tofw_new_custom_order_status'
wp option delete 'tofw_selected_custom_order_status'
wp option delete 'tofw_enable_track_order'
wp option delete 'tofw_enable_track_order_below'
wp option delete 'tofw_enable_track_order_below_text'
wp option delete 'tofw_enable_track_order_below_textarea'
wp option delete 'tofw_enable_track_order_below_action'
wp option delete 'tofw_enable_track_order_below_action_text'
wp option delete 'wps_tofw_order_status_in_approval'
wp option delete 'wps_tofw_order_status_in_processing'
wp option delete 'wps_tofw_order_status_in_shipping'
wp option delete 'tofw_enable_whatsapp_share_track_order'
wp option delete 'wps_tofwp_enable_multi_carrier_tracking'
wp option delete 'wps_tofwp_multi_carrier_api_key'
wp option delete 'tofw_enable_use_custom_status'
wp option delete 'wps_tofw_trackorder_with_google_map'
wp option delete 'wps_tofw_google_api_key'
wp option delete 'wps_tofw_order_production_address'
wp option delete 'wps_tofw_selected_address'
wp option delete 'wps_tofw_old_addresses'
wp option delete 'wps_tofw_enable_third_party_tracking_api'
wp option delete 'wps_tofw_enable_track_order_using_api'
wp option delete 'wps_fedex_userkey'
wp option delete 'wps_fedex_userpassword'
wp option delete 'wps_fedex_account_number'
wp option delete 'wps_fedex_meter_number'
wp option delete 'tofw_enable_tracking'
wp option delete 'wps_enable_dhl_track_icon'
wp option delete 'wps_tofw_new_custom_template'
wp option delete 'wps_tofw_new_settings_custom_statuses_for_order_tracking'
wp option delete 'wps_tofw_activated_template'
wp option delete 'wps_tofwp_enable_17track_integration'
wp option delete 'wps_tofw_tracking_page'
wp option delete 'wps_delay_email_customer_subject'
wp option delete 'wps_delay_email_customer_body'
wp option delete 'wps_delay_email_admin_subject'
wp option delete 'wps_delay_email_admin_body'
wp option delete 'wps_tofw_notify_admin_delay'
wp option delete '$wps_tofw_enable_upsell_tracking_page'
wp option delete 'wps_tofwp_general_settings_saved'
wp option delete 'wps_tofwp_courier_companies'
wp option delete 'wps_tofwp_courier_default_company'
wp option delete 'wps_order_status_conditions'
wp option delete 'wps_tofw_license_key'
wp option delete 'wps_tofw_license_check'
wp option delete 'wpswings_tracker_last_send'
wp option delete 'firstname'
wp option delete 'email'
wp option delete 'desc'
wp option delete 'age'
wp option delete 'first_checkbox'
wp option delete 'tofw_radio_reset_license'
wp option delete 'wps_track_orders_for_woocommerce_multistep_done'
wp option delete 'wps_tofw_qr_redirect'
wp option delete 'wps_tofw_warning_notification_message'
wp option delete 'wps_tofw_warning_notification'
wp option delete 'wps_enable_dhl_tracking'
wp option delete 'wps_msp_onboarding_data_skipped'
wp option delete 'wps_msp_onboarding_data_sent'
wp option delete 'wps_tofw_activated_timestamp'
wp option delete 'wps_tofwp_enable_track_order_popup'
wp option delete 'wps_enable_dhl_api_key'
wp option delete 'wps_dhl_truck_icon'
wp option delete 'wps_enable_dhl_tracking_color'
wp option delete 'wps_enable_dhl_tracking_text_color'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wps_tofw_track_order_class'
wp option delete 'wps_tofw_track_order_child_class'
wp option delete 'wps_tofw_tracking_order_custom_css'
wp option delete 'wps_tofw_save_selected_city'
wp option delete 'wps_tofw_address_get_correct'
wp option delete 'wps_tofw_address_latitude'
wp option delete 'wps_tofw_address_longitude'
wp option delete 'wps_tofw_user_order_id'
wp option delete 'wps_tofw_main_wrapper_class_theme'
wp option delete 'wps_tofw_child_wrapper_class'
wp option delete 'wps_tofw_custom_css_name'
wp option delete 'wps_tofw_custom_js_name'
wp option delete 'wps_tofw_wc_cancelled_text'
wp option delete 'wps_tofw_enable_upsell_tracking_page'
wp option delete 'woocommerce_order_number_prefix'
wp option delete 'active_sitewide_plugins'
wp option delete 'wps_all_plugins_active'

# Clear Cron Jobs
wp cron event delete 'wpswings_tracker_send_event'
wp cron event delete 'wps_tofw_daily_notification'
wp cron event delete 'wps_check_delivery_delays_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_save_selected_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_save_selected_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_save_selected_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_save_selected_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_estimated_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_estimated_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_estimated_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_estimated_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_estimated_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_estimated_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_estimated_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_estimated_delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_package_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_package_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_package_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_package_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_selected_shipping_service'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_selected_shipping_service'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_selected_shipping_service'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_selected_shipping_service'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_enhanced_order_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_enhanced_order_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_enhanced_order_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_enhanced_order_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_enhanced_tracking_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_enhanced_tracking_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_enhanced_tracking_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_enhanced_tracking_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_tracking_id_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_tracking_id_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_tracking_id_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_tracking_id_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_track_custom_cities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_track_custom_cities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_track_custom_cities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_track_custom_cities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_custom_change_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_custom_change_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_custom_change_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_custom_change_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_track_order_onchange_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_track_order_onchange_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_track_order_onchange_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_track_order_onchange_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_track_order_onchange_time_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_track_order_onchange_time_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_track_order_onchange_time_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_track_order_onchange_time_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_track_order_onchange_time_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_track_order_onchange_time_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_track_order_onchange_time_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_track_order_onchange_time_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_track_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_track_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_track_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_track_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wps_dhl_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wps_dhl_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wps_dhl_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wps_dhl_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_tofw_enhanced_cn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_tofw_enhanced_cn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_tofw_enhanced_cn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_tofw_enhanced_cn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_number'"
