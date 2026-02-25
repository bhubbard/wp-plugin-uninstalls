#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'en_freightview_carriers'
wp option delete 'en_quote_settings_shipping_logs_freightview'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'en_connection_settings_license_key_freightview'
wp option delete 'en_quote_settings_show_delivery_estimate_freightview'
wp option delete 'en_quote_settings_delivery_estimate_options_freightview'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'freightview_backup_rates_category'
wp option delete 'freightview_backup_rates_display'
wp option delete 'en_freightview_plan_number'
wp option delete 'en_freightview_plan_message'
wp option delete 'active_sitewide_plugins'
wp option delete 'en_freightview_plan_expire_days'
wp option delete 'en_freightview_plan_expire_date'
wp option delete 'en_freightview_store_type'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'freightview_backup_rates_fixed_rate'
wp option delete 'freightview_backup_rates_cart_price_percentage'
wp option delete 'freightview_backup_rates_weight_function'
wp option delete 'en_quote_settings_order_cut_off_time_freightview'
wp option delete 'enable_backup_rates_freightview'
wp option delete 'EN_Plugins'
wp option delete 'en_quote_settings_allow_other_plugins_freightview'
wp option delete 'en_freightview_ltl_update_now'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_quote_settings_residential_delivery_freightview'
wp option delete 'en_quote_settings_liftgate_delivery_freightview'
wp option delete 'en_quote_settings_limited_access_delivery_freightview'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'en_quote_settings_limited_access_delivery_fee_freightview'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'en_quote_settings_rating_method_freightview'
wp option delete 'en_quote_settings_custom_label_freightview'
wp option delete 'en_quote_settings_own_arrangment_freightview'
wp option delete 'en_quote_settings_text_for_own_arrangment_freightview'
wp option delete 'en_quote_settings_number_of_options_freightview'
wp option delete 'en_quote_settings_handling_unit_weight_freightview'
wp option delete 'maximum_handling_weight_freightview'
wp option delete 'en_quote_settings_handling_fee_freightview'
wp option delete 'freightview_liftgate_delivery_as_option'
wp option delete 'en_quote_settings_limited_access_delivery_as_option_freightview'
wp option delete 'en_woo_addons_liftgate_with_auto_residential'
wp option delete 'freightview_backup_rates_carrier_returns_error'
wp option delete 'freightview_backup_rates_carrier_fails_to_return_response'
wp option delete 'suspend_automatic_detection_of_residential_addresses'
wp option delete 'residential_delivery_options_disclosure_types_to'
wp option delete 'freightview_backup_rates_label'
wp option delete 'en_quote_settings_shipment_offset_days_freightview'
wp option delete 'en_quote_settings_all_shipment_days_freightview'
wp option delete 'en_quote_settings_monday_shipment_day_freightview'
wp option delete 'en_quote_settings_tuesday_shipment_day_freightview'
wp option delete 'en_quote_settings_wednesday_shipment_day_freightview'
wp option delete 'en_quote_settings_thursday_shipment_day_freightview'
wp option delete 'en_quote_settings_friday_shipment_day_freightview'
wp option delete 'woocommerce_dimension_unit'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hazardousmaterials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hazardousmaterials'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_flat_rate_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_flat_rate_price'"
