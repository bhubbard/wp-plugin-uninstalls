#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unishippers_freight_packages_quotes_package'
wp option delete 'unishippers_freight_store_type'
wp option delete 'unishippers_freight_package_expire_days'
wp option delete 'unishippers_freight_package_expire_date'
wp option delete 'en_fdo_coupon_data'
wp option delete 'en_va_coupon_data'
wp option delete 'en_fdo_company_id_status'
wp option delete 'en_fdo_company_id'
wp option delete 'wc_settings_unishipper_residential_delivery'
wp option delete 'wc_settings_unishippers_freight_lift_gate_delivery'
wp option delete 'api_endpoint_unishippers_ltl'
wp option delete 'wc_settings_unishippers_freight_licence_key'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'wc_settings_unishippers_freight_rate_method'
wp option delete 'unishippers_freight_order_cut_off_time'
wp option delete 'uni_ltl_backup_rates_fixed_rate'
wp option delete 'uni_ltl_backup_rates_cart_price_percentage'
wp option delete 'uni_ltl_backup_rates_weight_function'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'en_unishippers_freight_update_now'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'EN_Plugins'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'enable_backup_rates_unishippers_ltl'
wp option delete 'unishippers_ltl_backup_rates_display'
wp option delete 'wc_settings_unishippers_freight_allow_other_plugins'
wp option delete 'wc_settings_unishipper_residential_delivery '
wp option delete 'unishippers_delivery_estimates'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'unishippers_settings_client_id'
wp option delete 'unishippers_settings_client_secret'
wp option delete 'unishippers_new_api_username'
wp option delete 'unishippers_new_api_password'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'handling_weight_unishippers_ltl'
wp option delete 'maximum_handling_weight_unishippers_ltl'
wp option delete 'wc_settings_unishippers_freight_username'
wp option delete 'wc_settings_unishippers_freight_password'
wp option delete 'wc_settings_unishippers_freight_api_token'
wp option delete 'wc_settings_unishippers_freight_account_number'
wp option delete 'unishippers_account_id'
wp option delete 'all_shipment_days_unishippers'
wp option delete 'monday_shipment_day_unishippers'
wp option delete 'tuesday_shipment_day_unishippers'
wp option delete 'wednesday_shipment_day_unishippers'
wp option delete 'thursday_shipment_day_unishippers'
wp option delete 'friday_shipment_day_unishippers'
wp option delete 'wc_settings_unishippers_freight_text_for_own_arrangment'
wp option delete 'error_management_settings_unishippers_ltl'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'unishippers_freight_liftgate_delivery_as_option'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'wc_settings_unishippers_freight_allow_for_own_arrangment'
wp option delete 'unishippers_ltl_backup_rates_carrier_returns_error'
wp option delete 'unishippers_ltl_backup_rates_carrier_fails_to_return_response'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'wc_settings_unishippers_freight_label_as'
wp option delete 'wc_settings_unishippers_freight_delivery_estimate'
wp option delete 'wc_settings_unishippers_freight_Number_of_options'
wp option delete 'wc_settings_unishippers_freight_hand_free_mark_up'
wp option delete 'unishippers_freight_shipment_offset_days'
wp option delete 'unishippers_ltl_backup_rates_category'
wp option delete 'unishippers_ltl_backup_rates_label'
wp option delete 'enale_logs_unishippers_ltl'
wp option delete 'eniture_plugin_22'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nmfc_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nmfc_number'"
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
