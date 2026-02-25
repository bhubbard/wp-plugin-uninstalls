#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'en_connection_settings_suspend_distance_base_shipping'
wp option delete 'en_general_profile_condition'
wp option delete 'en_connection_settings_license_key_distance_base_shipping'
wp option delete 'EN_Plugins'
wp option delete 'EN_DISTANCE_BASE_SHIPPING_carriers'
wp option delete 'en_trial_dbsc_flag'
wp option delete 'subscription_packages_response'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'EN_DISTANCE_BASE_SHIPPING_plan_number'
wp option delete 'EN_DISTANCE_BASE_SHIPPING_plan_message'
wp option delete 'active_sitewide_plugins'
wp option delete 'en_quote_settings_allow_other_plugins_distance_base_shipping'
wp option delete 'en_dbsc_package_scac'
wp option delete 'en_settings_how_to_handle_multi_shipment_distance_base_shipping'
wp option delete 'en_connection_settings_multi_shipment_label_distance_base_shipping'
wp option delete 'en_settings_distance_based_multi_ship_profile_include'
wp option delete 'en_settings_distance_based_multi_ship_profile_exclude'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'en_quote_settings_rating_method_distance_base_shipping'
wp option delete 'en_quote_settings_custom_label_distance_base_shipping'
wp option delete 'en_quote_settings_show_delivery_estimate_distance_base_shipping'
wp option delete 'en_quote_settings_own_arrangment_distance_base_shipping'
wp option delete 'en_quote_settings_text_for_own_arrangment_distance_base_shipping'
wp option delete 'en_quote_settings_number_of_options_distance_base_shipping'
wp option delete 'en_quote_settings_handling_unit_weight_distance_base_shipping'
wp option delete 'en_quote_settings_handling_fee_distance_base_shipping'
wp option delete 'en_quote_settings_liftgate_delivery_distance_base_shipping'
wp option delete 'distance_base_shipping_liftgate_delivery_as_option'
wp option delete 'en_quote_settings_residential_delivery_distance_base_shipping'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'en_quote_settings_checkout_error_message_distance_base_shipping'
wp option delete 'en_quote_settings_option_select_when_unable_retrieve_shipping_distance_base_shipping'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_settings_error_management_not_in_profile_distance_base_shipping'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
