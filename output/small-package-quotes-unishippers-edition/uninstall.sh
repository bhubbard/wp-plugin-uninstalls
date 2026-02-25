#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unishepper_small_db_version'
wp option delete 'EN_Plugins'
wp option delete 'unishepper_small_web_hook_plan_requests'
wp option delete 'unishepper_small_package'
wp option delete 'unishepper_small_quotes_store_type'
wp option delete 'unishepper_small_package_expire_days'
wp option delete 'unishepper_small_package_expire_date'
wp option delete 'en_fdo_coupon_data'
wp option delete 'en_va_coupon_data'
wp option delete 'en_fdo_company_id_status'
wp option delete 'en_fdo_company_id'
wp option delete 'unishepper_small_quote_as_residential_delivery'
wp option delete 'unishippers_small_orderCutoffTime'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'api_endpoint_unishippers_small'
wp option delete 'unishepper_small_licence_key'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'enable_backup_rates_unishippers_small'
wp option delete 'unishepper_small_packaging_type'
wp option delete 'backup_rates_fixed_rate_unishippers_small'
wp option delete 'backup_rates_cart_price_percentage_unishippers_small'
wp option delete 'backup_rates_weight_function_unishippers_small'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'en_unishepper_small_update_now'
wp option delete 'restrict_days_transit_package_unishepper_small'
wp option delete 'restrict_radio_btn_transit_unishepper_small'
wp option delete 'unishepper_username'
wp option delete 'en_old_user_dropship_status'
wp option delete 'error_management_settings_unishepper_small_packages'
wp option delete 'backup_rates_category_unishippers_small'
wp option delete 'backup_rates_display_unishippers_small'
wp option delete 'unishepper_next_day_air'
wp option delete 'unishepper_next_day_air_markup'
wp option delete 'unishepper_small_next_day_air_saver'
wp option delete 'unishepper_small_next_day_air_saver_markup'
wp option delete 'unishepper_small_next_day_air_early'
wp option delete 'unishepper_small_next_day_air_early_markup'
wp option delete 'unishepper_small_2_day_air'
wp option delete 'unishepper_small_2_day_air_markup'
wp option delete 'unishepper_small_2_day_air_am'
wp option delete 'unishepper_small_2_day_air_am_markup'
wp option delete 'unishepper_small_3_day_select'
wp option delete 'unishepper_small_3_day_select_markup'
wp option delete 'unishepper_small_ups_ground'
wp option delete 'unishepper_small_ups_ground_markup'
wp option delete 'unishepper_small_ups_ground_residential_delivery'
wp option delete 'unishepper_small_ups_ground_residential_delivery_markup'
wp option delete 'unishepper_small_ups_ground_saturday_delivery'
wp option delete 'unishepper_small_ups_ground_saturday_delivery_markup'
wp option delete 'unishepper_small_sat_ups_next_day_air'
wp option delete 'unishepper_small_sat_ups_next_day_air_markup'
wp option delete 'unishepper_small_sat_ups_next_day_air_early'
wp option delete 'unishepper_small_sat_ups_next_day_air_early_markup'
wp option delete 'unishepper_small_sat_ups_2_day_air'
wp option delete 'unishepper_small_sat_ups_2_day_air_markup'
wp option delete 'unishepper_small_worldwide_express'
wp option delete 'unishepper_small_worldwide_express_markup'
wp option delete 'unishepper_small_worldwide_expedited'
wp option delete 'unishepper_small_worldwide_expedited_markup'
wp option delete 'unishepper_small_worldwide_saver'
wp option delete 'unishepper_small_worldwide_saver_markup'
wp option delete 'unishepper_small_standard_canada'
wp option delete 'unishepper_small_standard_canada_markup'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'unishepper_small_allow_other_plugins_option'
wp option delete 'wc_settings_wwe_return_LTL_quotes'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'unishippers_small_delivery_estimates'
wp option delete 'unishippers_small_shipmentOffsetDays'
wp option delete 'unishippers_small_packaging_method'
wp option delete 'unishippers_small_client_id'
wp option delete 'unishippers_small_client_secret'
wp option delete 'unishippers_small_new_api_username'
wp option delete 'unishippers_small_new_api_password'
wp option delete 'box_sizing_optimization_mode'
wp option delete 'unishepper_password'
wp option delete 'unishepper_small_auth_key'
wp option delete 'unishepper_ups_account_number'
wp option delete 'unishepper_small_customer_account_number'
wp option delete 'eniture_plugin_21'
wp option delete 'all_shipment_days_unishippers_small'
wp option delete 'monday_shipment_day_unishippers_small'
wp option delete 'tuesday_shipment_day_unishippers_small'
wp option delete 'wednesday_shipment_day_unishippers_small'
wp option delete 'thursday_shipment_day_unishippers_small'
wp option delete 'friday_shipment_day_unishippers_small'
wp option delete 'hub_id_unishepper_small'
wp option delete 'unishepper_small_smart_post'
wp option delete 'unishipper_small_hand_fee_mark_up'
wp option delete 'wc_pulish_negotiate_unishepper_small'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'wc_settings_unishepper_small_label_as'
wp option delete 'backup_rates_carrier_returns_error_unishippers_small'
wp option delete 'backup_rates_carrier_fails_to_return_response_unishippers_small'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'en_unishippers_ground_hazardous_material_fee'
wp option delete 'en_unishippers_air_hazardous_material_fee'
wp option delete 'unishepper_small_hazardous_materials_shipments'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'backup_rates_label_unishippers_small'
wp option delete 'unishepper_small_enable_logs'
wp option delete 'subscription_packages_response'
wp option delete 'suspend_automatic_detection_of_box_sizing'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nestedMaterials'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_signature_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_signature_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_signature_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_signature_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_exempt_ground_transit_restriction'"
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
