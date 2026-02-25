#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EN_Plugins'
wp option delete 'saia_quotes_web_hook_plan_requests'
wp option delete 'saia_quotes_packages_quotes_package'
wp option delete 'saia_quotes_store_type'
wp option delete 'saia_package_expire_days'
wp option delete 'saia_package_expire_date'
wp option delete 'saia_residential'
wp option delete 'saia_liftgate'
wp option delete 'saia_limited_access'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'wc_settings_saia_plugin_licence_key'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'saia_ltl_backup_rates_fixed_rate'
wp option delete 'saia_ltl_backup_rates_cart_price_percentage'
wp option delete 'saia_ltl_backup_rates_weight_function'
wp option delete 'saia_freight_orderCutoffTime'
wp option delete 'wc_pervent_proceed_checkout_eniture'
wp option delete 'saia_ltl_backup_rates_category'
wp option delete 'en_saia_update_now'
wp option delete 'wc_settings_saia_accountnbr_postal_code'
wp option delete 'saia_ltl_hold_at_terminal_remove_address'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'saia_ltl_backup_rates_display'
wp option delete 'enable_backup_rates_saia_ltl'
wp option delete 'saia_allow_other_plugins'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'eniture_plugin_10'
wp option delete 'saia_quotes_liftgate_delivery_as_option'
wp option delete 'wc_settings_saia_accountnbr'
wp option delete 'wc_settings_saia_accountnbr_third_party'
wp option delete 'wc_settings_saia_userid'
wp option delete 'wc_settings_saia_password'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'saia_freight_settings_handling_weight'
wp option delete 'saia_freight_freight_maximum_handling_weight'
wp option delete 'saia_handling_fee'
wp option delete 'saia_quotes_limited_access_delivery_as_option'
wp option delete 'saia_limited_access_delivery_fee'
wp option delete 'saia_delivery_estimates'
wp option delete 'all_shipment_days_saia'
wp option delete 'monday_shipment_day_saia'
wp option delete 'tuesday_shipment_day_saia'
wp option delete 'wednesday_shipment_day_saia'
wp option delete 'thursday_shipment_day_saia'
wp option delete 'friday_shipment_day_saia'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'saia_ltl_backup_rates_carrier_returns_error'
wp option delete 'saia_ltl_backup_rates_carrier_fails_to_return_response'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'saia_label_as'
wp option delete 'saia_freight_shipmentOffsetDays'
wp option delete 'saia_ltl_hold_at_terminal_checkbox_status'
wp option delete 'saia_ltl_hold_at_terminal_fee'
wp option delete 'saia_ltl_backup_rates_label'
wp option delete 'enale_logs_saia'
wp option delete 'restrict_calendar_transit_wwe_small_packages'
wp option delete 'ground_transit_wwe_small_packages'
wp option delete 'wwe_small_packages_quotes_package'
wp option delete 'saia_delivey_estimate'
wp option delete 'eniture_plugin_18'

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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_insurance_fee'"
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
