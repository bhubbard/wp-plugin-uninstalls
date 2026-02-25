#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fedex_small_db_version'
wp option delete 'EN_Plugins'
wp option delete 'fedex_small_web_hook_plan_requests'
wp option delete 'fedex_small_package'
wp option delete 'fedex_small_quotes_store_type'
wp option delete 'fedex_small_package_expire_days'
wp option delete 'fedex_small_package_expire_date'
wp option delete 'fedex_small_quote_as_residential_delivery'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'fedex_small_home_delivery'
wp option delete 'fedex_small_home_delivery_markup'
wp option delete 'fedex_small_ground'
wp option delete 'fedex_small_ground_markup'
wp option delete 'fedex_small_express_saver'
wp option delete 'fedex_small_express_saver_markup'
wp option delete 'fedex_small_2_day'
wp option delete 'fedex_small_2_day_markup'
wp option delete 'fedex_small_2_day_AM'
wp option delete 'fedex_small_2_day_AM_markup'
wp option delete 'fedex_small_standard_overnight'
wp option delete 'fedex_small_standard_overnight_markup'
wp option delete 'fedex_small_priority_overnight'
wp option delete 'fedex_small_priority_overnight_markup'
wp option delete 'fedex_small_first_overnight'
wp option delete 'fedex_small_first_overnight_markup'
wp option delete 'fedex_small_smart_post'
wp option delete 'fedex_small_smart_post_markup'
wp option delete 'fedex_small_one_rate_express_saver'
wp option delete 'fedex_small_saver_onerate_markup'
wp option delete 'fedex_small_one_rate_2_day'
wp option delete 'fedex_small_2day_srvc_onerate_markup'
wp option delete 'fedex_small_one_rate_2_day_AM'
wp option delete 'fedex_small_2day_am_onerate_markup'
wp option delete 'fedex_small_one_rate_standard_overnight'
wp option delete 'fedex_small_st_overnight_onerate_markup'
wp option delete 'fedex_small_one_rate_priority_overnight'
wp option delete 'fedex_small_pr_overnight_onerate_markup'
wp option delete 'fedex_small_one_rate_first_overnight'
wp option delete 'fedex_small_fst_overnight_onerate_markup'
wp option delete 'fedex_small_int_ground'
wp option delete 'fedex_small_int_ground_markup'
wp option delete 'fedex_small_int_distribution_freight'
wp option delete 'fedex_small_int_distribution_freight_markup'
wp option delete 'fedex_small_int_economy'
wp option delete 'fedex_small_int_economy_markup'
wp option delete 'fedex_small_int_eco_distribution'
wp option delete 'fedex_small_int_eco_distribution_markup'
wp option delete 'fedex_small_int_eco_freight'
wp option delete 'fedex_small_int_eco_freight_markup'
wp option delete 'fedex_small_int_first'
wp option delete 'fedex_small_int_first_markup'
wp option delete 'fedex_small_int_priority'
wp option delete 'fedex_small_int_priority_markup'
wp option delete 'fedex_small_int_priority_distribution'
wp option delete 'fedex_small_int_priority_distribution_markup'
wp option delete 'fedex_small_int_priority_freight'
wp option delete 'fedex_small_int_priority_freight_markup'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'backup_rates_display_fedex_small'
wp option delete 'enable_backup_rates_fedex_small'
wp option delete 'fedex_small_allow_other_plugins_option'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'wc_settings_wwe_return_LTL_quotes'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'fedex_small_delivery_estimates'
wp option delete 'fedex_small_orderCutoffTime'
wp option delete 'fedex_small_shipmentOffsetDays'
wp option delete 'fedex_small_packaging_method'
wp option delete 'fedex_small_auth_key'
wp option delete 'fedex_small_password'
wp option delete 'fedex_small_meter_number'
wp option delete 'fedex_small_account_number'
wp option delete 'fedex_small_licence_key'
wp option delete 'box_sizing_optimization_mode'
wp option delete 'fedex_small_hand_fee_mark_up'
wp option delete 'api_selection_fedex_small'
wp option delete 'fedex_small_client_id'
wp option delete 'fedex_small_client_secret'
wp option delete 'fedex_small_new_api_acc_number'
wp option delete 'eniture_plugin_3'
wp option delete 'all_shipment_days_fedex_small'
wp option delete 'monday_shipment_day_fedex_small'
wp option delete 'tuesday_shipment_day_fedex_small'
wp option delete 'wednesday_shipment_day_fedex_small'
wp option delete 'thursday_shipment_day_fedex_small'
wp option delete 'friday_shipment_day_fedex_small'
wp option delete 'hub_id_fedex_small'
wp option delete 'fedex_small_hazardous_fee'
wp option delete 'wc_pulish_negotiate_fedex_small'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'wc_settings_fedex_small_label_as'
wp option delete 'backup_rates_carrier_returns_error_fedex_small'
wp option delete 'backup_rates_carrier_fails_to_return_response_fedex_small'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'fedex_small_quote_information_preference'
wp option delete 'box_sizing_packaging_solution_preference'
wp option delete 'en_fedex_small_ground_hazardous_material_fee'
wp option delete 'en_fedex_small_air_hazardous_material_fee'
wp option delete 'fedex_small_hazardous_materials_shipments'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'backup_rates_category_fedex_small'
wp option delete 'backup_rates_fixed_rate_fedex_small'
wp option delete 'backup_rates_cart_price_percentage_fedex_small'
wp option delete 'backup_rates_weight_function_fedex_small'
wp option delete 'backup_rates_label_fedex_small'
wp option delete 'en_fedex_spq_enable_logs'
wp option delete 'subscription_packages_response'
wp option delete 'suspend_automatic_detection_of_box_sizing'
wp option delete 'woocommerce_currency'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'fedex_small_packaging_type'
wp option delete 'wc_pervent_proceed_checkout_eniture'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'
wp option delete 'restrict_days_transit_package_fedex_small'
wp option delete 'restrict_radio_btn_transit_fedex_small'
wp option delete 'ground_transit_wwe_small_packages'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ltl_freight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ltl_freight'"
