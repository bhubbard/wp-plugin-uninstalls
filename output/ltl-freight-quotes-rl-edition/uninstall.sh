#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rnl_db_version'
wp option delete 'EN_Plugins'
wp option delete 'rnl_quotes_web_hook_plan_requests'
wp option delete 'rnl_quotes_packages_quotes_package'
wp option delete 'rnl_quotes_store_type'
wp option delete 'rnl_package_expire_days'
wp option delete 'rnl_freight_package_expire_date'
wp option delete 'wc_settings_rnl_residential'
wp option delete 'wc_settings_rnl_liftgate'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'wc_settings_rnl_plugin_licence_key'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'rnl_freight_order_cut_off_time'
wp option delete 'rnl_backup_rates_fixed_rate'
wp option delete 'rnl_backup_rates_cart_price_percentage'
wp option delete 'rnl_backup_rates_weight_function'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'en_rl_update_now'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'
wp option delete 'en_old_user_hazmat_status'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'enable_backup_rates_rnl_ltl'
wp option delete 'rnl_ltl_backup_rates_display'
wp option delete 'wc_settings_rnl_allow_other_plugins'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'rnl_delivery_estimates'
wp option delete 'wc_settings_rnl_username'
wp option delete 'wc_settings_rnl_password'
wp option delete 'wc_settings_rnl_api_key'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'rnl_freight_handling_weight'
wp option delete 'rnl_freight_maximum_handling_weight'
wp option delete 'en_rnl_pallets_dropdown'
wp option delete 'en_rnl_max_weight_per_pallet'
wp option delete 'eniture_plugin_14'
wp option delete 'all_shipment_days_rnl'
wp option delete 'monday_shipment_day_rnl'
wp option delete 'tuesday_shipment_day_rnl'
wp option delete 'wednesday_shipment_day_rnl'
wp option delete 'thursday_shipment_day_rnl'
wp option delete 'friday_shipment_day_rnl'
wp option delete 'rnl_limited_access_delivery_as_option'
wp option delete 'rnl_limited_access_delivery'
wp option delete 'rnl_quotes_always_quote_liftgate_when_limited_access'
wp option delete 'rnl_limited_access_delivery_fee'
wp option delete 'error_management_settings_rnl_ltl'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'rnl_quotes_liftgate_delivery_as_option'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'wc_settings_rnl_label_as'
wp option delete 'guaranteed_pm_label_as'
wp option delete 'guaranteed_am_label_as'
wp option delete 'guaranteed_hourly_label_as'
wp option delete 'indirect_deliveries_enable_service'
wp option delete 'wc_settings_rnl_handling_fee'
wp option delete 'wc_settings_rnl_delivey_estimate'
wp option delete 'rnl_hold_at_terminal_checkbox_status'
wp option delete 'rnl_hold_at_terminal_fee'
wp option delete 'rnl_freight_shipment_offset_days'
wp option delete 'rnl_ltl_backup_rates_carrier_returns_error'
wp option delete 'rnl_ltl_backup_rates_carrier_fails_to_return_response'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'rnl_ltl_backup_rates_category'
wp option delete 'rnl_ltl_backup_rates_label'
wp option delete 'enale_logs_rnl'
wp option delete 'standard_enable_service'
wp option delete 'en_rnl_pallets_json'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nestedMaterials'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dropship_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hazardousmaterials'"
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
