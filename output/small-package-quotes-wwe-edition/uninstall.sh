#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_wwe_return_LTL_quotes'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'wwe_small_delivery_estimates'
wp option delete 'wwe_small_orderCutoffTime'
wp option delete 'wwe_small_shipmentOffsetDays'
wp option delete 'wwe_small_packaging_method'
wp option delete 'wc_settings_plugin_licence_key_wwe_small_packages_quotes'
wp option delete 'wc_settings_quest_as_residential_delivery_wwe_small_packages'
wp option delete 'box_sizing_optimization_mode'
wp option delete 'wc_settings_hand_free_mark_up_wwe_small_packages'
wp option delete 'wwe_small_client_id'
wp option delete 'wwe_small_client_secret'
wp option delete 'wc_settings_account_number_wwe_small_packages_quotes'
wp option delete 'wwe_small_new_api_username'
wp option delete 'wwe_small_new_api_password'
wp option delete 'eniture_plugin_1'
wp option delete 'all_shipment_days_wwex_small'
wp option delete 'monday_shipment_day_wwex_small'
wp option delete 'tuesday_shipment_day_wwex_small'
wp option delete 'wednesday_shipment_day_wwex_small'
wp option delete 'thursday_shipment_day_wwex_small'
wp option delete 'friday_shipment_day_wwex_small'
wp option delete 'wc_settings_username_wwe_small_packages_quotes'
wp option delete 'wc_settings_password_wwe_small_packages'
wp option delete 'error_management_settings_wwe_small_packages'
wp option delete 'wc_settings_authentication_key_wwe_small_packages_quotes'
wp option delete 'wwe_small_packages_quotes_web_hook_plan_requests'
wp option delete 'wwe_small_packages_quotes_package'
wp option delete 'wwe_small_packages_quotes_store_type'
wp option delete 'wwe_small_package_expire_days'
wp option delete 'wwe_small_package_expire_date'
wp option delete 'en_fdo_coupon_data'
wp option delete 'en_va_coupon_data'
wp option delete 'en_fdo_company_id_status'
wp option delete 'en_fdo_company_id'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'EN_Plugins'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'enable_backup_rates_wwe_small'
wp option delete 'backup_rates_carrier_returns_error_wwe_small'
wp option delete 'backup_rates_carrier_fails_to_return_response_wwe_small'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'only_quote_ground_service_for_hazardous_materials_shipments'
wp option delete 'ground_hazardous_material_fee'
wp option delete 'air_hazardous_material_fee'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'wc_settings_Service_UPS_Next_Day_Early_AM_small_packages_quotes'
wp option delete 'wwesmall_Service_UPS_Next_Day_Early_AM_small_packages_quotes_markup'
wp option delete 'wc_settings_Service_UPS_Next_Day_Air_small_packages_quotes'
wp option delete 'wwesmall_Service_UPS_Next_Day_Air_small_packages_quotes_markup'
wp option delete 'wc_settings_Service_UPS_Next_Day_Air_Saver_small_packages_quotes'
wp option delete 'wwesmall_Service_UPS_Next_Day_Air_Saver_small_packages_quotes_markup'
wp option delete 'wc_settings_Service_UPS_2nd_Day_AM_quotes'
wp option delete 'wwesmall_Service_UPS_2nd_Day_AM_quotes_markup'
wp option delete 'wc_settings_Service_UPS_2nd_Day_PM_quotes'
wp option delete 'wwesmall_Service_UPS_2nd_Day_PM_quotes_markup'
wp option delete 'wc_settings_Service_UPS_2nd_Day_Saturday_quotes'
wp option delete 'wwesmall_Service_UPS_2nd_Day_Saturday_quotes_markup'
wp option delete 'wc_settings_Service_UPS_3rd_Day_quotes'
wp option delete 'wwesmall_Service_UPS_3rd_Day_quotes_markup'
wp option delete 'wc_settings_Service_UPS_Ground_quotes'
wp option delete 'wwesmall_Service_UPS_Ground_quotes_markup'
wp option delete 'wwe_small_pkg_Worldwide_Express'
wp option delete 'wwe_small_worldwide_express_markup'
wp option delete 'wwe_small_worldwide_saver'
wp option delete 'wwe_small_worldwide_saver_markup'
wp option delete 'wwe_small_worldwide_express_plus'
wp option delete 'wwe_small_worldwide_express_plus_markup'
wp option delete 'wwe_small_worldwide_expedited'
wp option delete 'wwe_small_pkg_Worldwide_Expedited_markup'
wp option delete 'wwe_small_pkg_standard'
wp option delete 'wwe_small_standard_markup'
wp option delete 'backup_rates_category_wwe_small'
wp option delete 'backup_rates_fixed_rate_wwe_small'
wp option delete 'backup_rates_cart_price_percentage_wwe_small'
wp option delete 'backup_rates_weight_function_wwe_small'
wp option delete 'backup_rates_label_wwe_small'
wp option delete 'en_wwe_spq_enable_logs'
wp option delete 'backup_rates_display_wwe_small'
wp option delete 'wwe_small_packaging_type'
wp option delete 'restrict_calendar_transit_wwe_small_packages'
wp option delete 'ground_transit_wwe_small_packages'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'wc_pervent_proceed_checkout_eniture'
wp option delete 'wc_settings_wwe_small_allow_other_plugins'
wp option delete 'en_wwe_small_update_now'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_fs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_fs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_fs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_fs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_multiple_packages'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight'"
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
