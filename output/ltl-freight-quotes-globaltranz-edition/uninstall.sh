#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'wc_settings_globaltranz_lowest_label_as'
wp option delete 'wc_settings_globaltranz_quickest_label_as'
wp option delete 'service_global_tranz_rating_method_ch_unch'
wp option delete 'service_global_tranz_lowest_cost_rate_quotes'
wp option delete 'service_global_tranz_quickest_transit_rate_quotes'
wp option delete 'cerasis_global_tranz_api_endpoint'
wp option delete 'wc_settings_global_tranz_username'
wp option delete 'wc_settings_global_tranz_password'
wp option delete 'wc_gtz_new_api_client_id'
wp option delete 'wc_gtz_new_api_client_secret'
wp option delete 'wc_gtz_new_api_api_username'
wp option delete 'wc_gtz_new_api_api_password'
wp option delete 'cerasis_freights_web_hook_plan_requests'
wp option delete 'cerasis_freight_package'
wp option delete 'cerasis_freight_quotes_store_type'
wp option delete 'cerasis_freight_package_expire_days'
wp option delete 'cerasis_freight_package_expire_date'
wp option delete 'en_fdo_coupon_data'
wp option delete 'en_va_coupon_data'
wp option delete 'en_fdo_company_id_status'
wp option delete 'en_fdo_company_id'
wp option delete 'wc_settings_cerasis_notify'
wp option delete 'wc_settings_cerasis_residential_delivery'
wp option delete 'wc_settings_cerasis_lift_gate_delivery'
wp option delete 'gtz_limited_access_delivery'
wp option delete 'automatically_enable_new_carriers'
wp option delete 'wc_settings_cerasis_licence_key'
wp option delete 'wc_settings_cerasis_shipper_id'
wp option delete 'wc_settings_cerasis_username'
wp option delete 'wc_settings_cerasis_password'
wp option delete 'wc_settings_cerasis_authentication_key'
wp option delete 'carriers_updated_time'
wp option delete 'gtz_ltl_backup_rates_display'
wp option delete 'enable_backup_rates_gtz_ltl'
wp option delete 'wc_settings_cerasis_allow_other_plugins'
wp option delete 'EN_Plugins'
wp option delete 'wc_settings_cerasis_hand_free_mark_up'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'cerasis_global_tranz_shipping_service'
wp option delete 'wc_cerasis_edition'
wp option delete 'wc_cerasis_db_version'
wp option delete 'cerasis_freights_liftgate_delivery_as_option'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'ups_freight_setting_residential'
wp option delete 'gt_delivery_estimates'
wp option delete 'cerasis_freights_notify_as_option'
wp option delete 'eniture_plugin_15'
wp option delete 'all_shipment_days_gt'
wp option delete 'monday_shipment_day_gt'
wp option delete 'tuesday_shipment_day_gt'
wp option delete 'wednesday_shipment_day_gt'
wp option delete 'thursday_shipment_day_gt'
wp option delete 'friday_shipment_day_gt'
wp option delete 'en_default_unconfirmed_address_types_to'
wp option delete 'wc_settings_global_tranz_authentication_key'
wp option delete 'wc_settings_global_tranz_customer_id'
wp option delete 'engtz_freight_handling_weight'
wp option delete 'engtz_freight_maximum_handling_weight'
wp option delete 'en_cerasis_premium_label'
wp option delete 'en_cerasis_room_of_choice_label'
wp option delete 'en_cerasis_threshold_label'
wp option delete 'error_management_settings_gtz_ltl'
wp option delete 'wc_settings_gtz_enable_logs'
wp option delete 'wc_settings_cerasis_allow_for_own_arrangment'
wp option delete 'wc_settings_cerasis_rate_method'
wp option delete 'wc_settings_cerasis_delivery_estimate'
wp option delete 'wc_settings_cerasis_label_as'
wp option delete 'wc_settings_cerasis_Number_of_options'
wp option delete 'wc_settings_cerasis_text_for_own_arrangment'
wp option delete 'gtz_ltl_backup_rates_carrier_returns_error'
wp option delete 'gtz_ltl_backup_rates_carrier_fails_to_return_response'
wp option delete 'gtz_limited_access_delivery_as_option'
wp option delete 'gtz_limited_access_delivery_fee'
wp option delete 'gt_freight_order_cut_off_time'
wp option delete 'gt_freight_shipment_offset_days'
wp option delete 'en_cerasis_threshold_checkbox'
wp option delete 'en_cerasis_room_of_choice_checkbox'
wp option delete 'en_cerasis_premium_checkbox'
wp option delete 'gtz_ltl_backup_rates_category'
wp option delete 'gtz_ltl_backup_rates_fixed_rate'
wp option delete 'gtz_ltl_backup_rates_cart_price_percentage'
wp option delete 'gtz_ltl_backup_rates_weight_function'
wp option delete 'gtz_ltl_backup_rates_label'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'engtz_cerasis_update_now'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'
wp option delete 'en_old_user_hazmat_status'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'wc_settings_wwe_hand_free_mark_up'

# Clear Cron Jobs
wp cron event delete 'engtz_add_every_weekly_cron_get_carriers'
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stackable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stackable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stackable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stackable'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
