#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ups_ltl_db_version'
wp option delete 'EN_Plugins'
wp option delete 'estes_ltl_quotes_web_hook_plan_requests'
wp option delete 'estes_freight_package'
wp option delete 'estes_freight_quotes_store_type'
wp option delete 'estes_freight_package_expire_days'
wp option delete 'estes_freight_package_expire_date'
wp option delete 'estes_backup_rates_display'
wp option delete 'enable_backup_rates_estes'
wp option delete 'estes_settings_allow_other_plugins'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'estes_settings_liftgate'
wp option delete 'estes_setting_residential'
wp option delete 'estes_ltl_quotes_liftgate_delivery_as_option'
wp option delete 'accessorial_inside_delivery_estes_freight'
wp option delete 'estes_freight_inside_delivery_as_option'
wp option delete 'accessorial_appointment_delivery_estes_freight'
wp option delete 'estes_freight_appointment_delivery_as_option'
wp option delete 'estes_delivery_estimates'
wp option delete 'estes_setting_licnse_key'
wp option delete 'estes_setting_username'
wp option delete 'estes_setting_password'
wp option delete 'estes_setting_customer_no'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'estes_freight_handling_weight'
wp option delete 'estes_freight_maximum_handling_weight'
wp option delete 'estes_settings_handling_fee'
wp option delete 'eniture_plugin_13'
wp option delete 'all_shipment_days_estes'
wp option delete 'monday_shipment_day_estes'
wp option delete 'tuesday_shipment_day_estes'
wp option delete 'wednesday_shipment_day_estes'
wp option delete 'thursday_shipment_day_estes'
wp option delete 'friday_shipment_day_estes'
wp option delete 'ltl_standard_transit'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'estes_setting_label_as'
wp option delete 'estes_settings_delivey_estimate'
wp option delete 'estes_freight_hold_at_terminal_checkbox_status'
wp option delete 'estes_freight_hold_at_terminal_fee'
wp option delete 'estes_freight_order_cut_off_time'
wp option delete 'estes_freight_shipment_offset_days'
wp option delete 'handling_fee'
wp option delete 'estes_backup_rates_carrier_returns_error'
wp option delete 'estes_backup_rates_carrier_fails_to_return_response'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'estes_backup_rates_category'
wp option delete 'estes_backup_rates_fixed_rate'
wp option delete 'estes_backup_rates_cart_price_percentage'
wp option delete 'estes_backup_rates_weight_function'
wp option delete 'estes_backup_rates_label'
wp option delete 'en_estes_enable_logs'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'en_estes_update_now'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'estes_coupon_code'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nestedPercentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nestedPercentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nestedPercentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nestedPercentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nestedDimension'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nestedDimension'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nestedDimension'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nestedDimension'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_maxNestedItems'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_maxNestedItems'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_maxNestedItems'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_maxNestedItems'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nestedStakingProperty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nestedStakingProperty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nestedStakingProperty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nestedStakingProperty'"
