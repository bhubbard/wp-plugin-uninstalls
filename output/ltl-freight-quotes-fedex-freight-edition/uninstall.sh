#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fedex_freight_db_version'
wp option delete 'EN_Plugins'
wp option delete 'fedex_direct_shipper_zip'
wp option delete 'fedex_freight_shipper_bill_zip'
wp option delete 'fedex_direct_third_party_account'
wp option delete 'fedex_freight_auth_key'
wp option delete 'fedex_freight_password'
wp option delete 'fedex_freight_bill_num'
wp option delete 'fedex_freight_meter_num'
wp option delete 'fedex_direct_shipper_address'
wp option delete 'fedex_direct_shipper_city'
wp option delete 'fedex_direct_shipper_state'
wp option delete 'fedex_direct_shipper_country'
wp option delete 'fedex_direct_shipper_acc_num'
wp option delete 'direct_economy_basic'
wp option delete 'direct_priority_basic'
wp option delete 'direct_economy_appointment'
wp option delete 'direct_priority_basic_appointment'
wp option delete 'direct_priority_standard'
wp option delete 'direct_priority_premium'
wp option delete 'fedex_freight_direct_economy_basic'
wp option delete 'basic_manually_fee'
wp option delete 'fedex_freight_direct_priority_basic'
wp option delete 'fedex_freight_direct_economy_basic_by_appointment'
wp option delete 'basic_manually_appointment'
wp option delete 'fedex_freight_direct_priority_basic_by_appointment'
wp option delete 'fedex_freight_direct_priority_standard'
wp option delete 'direct_manually_standard'
wp option delete 'fedex_freight_direct_priority_premium'
wp option delete 'direct_premium_manually'
wp option delete 'fedex_freight_web_hook_plan_requests'
wp option delete 'fedex_freight_package'
wp option delete 'fedex_freight_quotes_store_type'
wp option delete 'fedex_freight_package_expire_days'
wp option delete 'fedex_freight_package_expire_date'
wp option delete 'fedex_freight_residential'
wp option delete 'fedex_freight_liftgate'
wp option delete 'accessorial_inside_delivery_fedex_freight'
wp option delete 'accessorial_appointment_delivery_fedex_freight'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'fedex_ltl_backup_rates_display'
wp option delete 'enable_backup_rates_fedex_ltl'
wp option delete 'fedex_freight_allow_other_plugins'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'fedex_freight_shipper_zip'
wp option delete 'fedex_freight_third_party_account'
wp option delete 'fedex_freight_delivery_estimates'
wp option delete 'fedex_freight_orderCutoffTime'
wp option delete 'fedex_freight_shipmentOffsetDays'
wp option delete 'fedex_freight_client_id'
wp option delete 'fedex_freight_client_secret'
wp option delete 'fedex_freight_shipper_bill_address'
wp option delete 'fedex_freight_shipper_bill_city'
wp option delete 'fedex_freight_shipper_bill_state'
wp option delete 'fedex_freight_shipper_bill_country'
wp option delete 'fedex_freight_shipper_acc_num'
wp option delete 'fedex_freight_shipper_address'
wp option delete 'fedex_freight_inside_delivery_as_option'
wp option delete 'fedex_freight_appointment_delivery_as_option'
wp option delete 'fedex_freight_plugin_licence_key'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'fedex_freight_quote_discount'
wp option delete 'fedex_freight_discount_percent'
wp option delete 'handling_weight_fedex_freight'
wp option delete 'maximum_handling_weight_fedex_freight'
wp option delete 'api_selection_fedex_freight'
wp option delete 'all_shipment_days_fedex_ltl'
wp option delete 'monday_shipment_day_fedex_ltl'
wp option delete 'tuesday_shipment_day_fedex_ltl'
wp option delete 'wednesday_shipment_day_fedex_ltl'
wp option delete 'thursday_shipment_day_fedex_ltl'
wp option delete 'friday_shipment_day_fedex_ltl'
wp option delete 'fedex_freight_shipper_city'
wp option delete 'fedex_freight_shipper_state'
wp option delete 'fedex_freight_shipper_country'
wp option delete 'eniture_plugin_4'
wp option delete 'direct_only_residential'
wp option delete 'service_fedex_freight_economy_quotes'
wp option delete 'service_fedex_economy_label_as'
wp option delete 'service_fedex_freight_priority_quotes'
wp option delete 'service_fedex_priority_label_as'
wp option delete 'error_management_settings_fedex_ltl'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'fedex_freight_liftgate_delivery_as_option'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'fedex_freight_handling_fee'
wp option delete 'fedex_freight_hold_at_terminal_checkbox_status'
wp option delete 'fedex_freight_hold_at_terminal_fee'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'fedex_ltl_backup_rates_carrier_fails_to_return_response'
wp option delete 'fedex_ltl_backup_rates_carrier_returns_error'
wp option delete 'fedex_ltl_backup_rates_category'
wp option delete 'fedex_ltl_backup_rates_fixed_rate'
wp option delete 'fedex_ltl_backup_rates_cart_price_percentage'
wp option delete 'fedex_ltl_backup_rates_weight_function'
wp option delete 'fedex_ltl_backup_rates_label'
wp option delete 'en_fedex_enable_logs'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'restrict_radio_btn_transit_fedex_small'
wp option delete 'ground_transit_wwe_small_packages'
wp option delete 'restrict_days_transit_package_fedex_small'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup'"
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
