#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_freightquote_lift_gate_pickup'
wp option delete 'wc_settings_freightquote_residential_delivery'
wp option delete 'wc_settings_freightquote_lift_gate_delivery'
wp option delete 'limited_access_delivery_freightquote'
wp option delete 'appointment_delivery_freightquote'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'freightquote_delivery_estimates'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'freightquote_customer_code'
wp option delete 'en_freight_quote_ltl_above_threshold'
wp option delete 'en_freight_quote_ltl_above_cubic_volume_threshold'
wp option delete 'wc_settings_freightquote_license_key'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'woocommerce_store_address'
wp option delete 'freight_quote_settings_handling_weight'
wp option delete 'freight_quote_maximum_handling_weight'
wp option delete 'en_freight_quote_truckload_weight_threshold_chr'
wp option delete 'en_freight_quote_truckload_weight_break_chr'
wp option delete 'en_freight_quote_truckload_cubic_volume_threshold_chr'
wp option delete 'en_freight_quote_truckload_cubic_volume_break_chr'
wp option delete 'wc_settings_freightquote_hand_free_mark_up'
wp option delete 'freightquote_quests_appointment_delivery_as_option'
wp option delete 'freightquote_quests_always_appointment_delivery_when_residential'
wp option delete 'all_shipment_days_yrc'
wp option delete 'monday_shipment_day_yrc'
wp option delete 'tuesday_shipment_day_yrc'
wp option delete 'wednesday_shipment_day_yrc'
wp option delete 'thursday_shipment_day_yrc'
wp option delete 'friday_shipment_day_yrc'
wp option delete 'en_freight_quote_truckload_flatbed_label'
wp option delete 'en_freight_quote_truckload_refrigerated_label'
wp option delete 'en_freight_quote_truckload_van_label'
wp option delete 'en_freight_quote_tl_show_trucks_involved'
wp option delete 'wc_settings_freightquote_text_for_own_arrangment'
wp option delete 'freightquote_quests_limited_access_delivery_as_option'
wp option delete 'freight_quote_limited_access_fee'
wp option delete 'fq_ltl_backup_rates_display'
wp option delete 'enable_backup_rates_fq_ltl'
wp option delete 'wc_settings_freightquote_allow_other_plugins'
wp option delete 'EN_Plugins'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'suspend_automatic_detection_of_pallets'
wp option delete 'suspend_freightquote_quests_automatic_detection_of_pallets'
wp option delete 'freightquote_ltl_packages_quotes_package'
wp option delete 'wc_settings_freightquote_allow_for_own_arrangment'
wp option delete 'fq_ltl_backup_rates_carrier_returns_error'
wp option delete 'fq_ltl_backup_rates_carrier_fails_to_return_response'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'wc_settings_freightquote_label_as'
wp option delete 'wc_settings_freightquote_rate_method'
wp option delete 'wc_settings_freightquote_Number_of_options'
wp option delete 'freightquote_quests_liftgate_delivery_as_option'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'freightquote_freight_order_cut_off_time'
wp option delete 'freightquote_freight_shipment_offset_days'
wp option delete 'fq_ltl_backup_rates_category'
wp option delete 'fq_ltl_backup_rates_fixed_rate'
wp option delete 'fq_ltl_backup_rates_cart_price_percentage'
wp option delete 'fq_ltl_backup_rates_weight_function'
wp option delete 'fq_ltl_backup_rates_label'
wp option delete 'shipping_logs_freightquote'
wp option delete 'freightquote_api_endpoint'
wp option delete 'freightquote_quests_no_liftgate_delivery_as_option'
wp option delete 'freightquote_quests_no_liftgate_delivery_as_option_item_length'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'freightquote_ltl_update_now'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'freightquote_ltl_package_expire_days'
wp option delete 'freightquote_ltl_package_expire_date'
wp option delete 'freightquote_quests_store_type'
wp option delete 'eniture_plugin_20'

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
