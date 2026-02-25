#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'en_usps_shipping_logs'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'usps_small_licence_key'
wp option delete 'en_usps_checkout_error_message'
wp option delete 'en_usps_unable_retrieve_shipping'
wp option delete 'en_usps_plan_number'
wp option delete 'en_usps_plan_message'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'en_quote_settings_return_ltl_rates_usps'
wp option delete 'active_sitewide_plugins'
wp option delete 'en_usps_plan_expire_days'
wp option delete 'en_usps_plan_expire_date'
wp option delete 'en_usps_store_type'
wp option delete 'eniture_show_rate_limit_notice_with_time'
wp option delete 'eniture_rate_limit_reset_timestamp'
wp option delete 'usps_backup_rates_fixed_rate'
wp option delete 'usps_backup_rates_cart_price_percentage'
wp option delete 'usps_backup_rates_weight_function'
wp option delete 'usps_backup_rates_display'
wp option delete 'enable_backup_rates_usps'
wp option delete 'EN_Plugins'
wp option delete 'en_usps_allow_other_plugin_quotes'
wp option delete 'eniture_show_rate_limit_notice_without_time'
wp option delete 'en_usps_residential_delivery'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'en_usps_markup_%'"
wp option delete 'en_woo_addons_auto_residential_detecion_flag'
wp option delete 'auto_residential_delivery_plan_auto_renew'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shipment'"
wp option delete 'en_delivery_estimate_options_usps'
wp option delete 'en_usps_cutt_off_time'
wp option delete 'en_usps_fulfilment_offset_days'
wp option delete 'en_usps_transit_days'
wp option delete 'en_usps_transit_day_options'
wp option delete 'en_usps_hazardous_material_settings'
wp option delete 'en_usps_hazardous_material_settings_ground_fee'
wp option delete 'en_usps_hazardous_material_settings_international_fee'
wp option delete 'en_usps_handling_fee'
wp option delete 'usps_backup_rates_carrier_returns_error'
wp option delete 'usps_backup_rates_carrier_fails_to_return_response'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'usps_backup_rates_category'
wp option delete 'usps_backup_rates_label'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_usps_rate_tier_dropdown'
wp option delete 'box_sizing_optimization_mode'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'en_woocommerce_thankyou_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_dropship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_product_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_product_markup'"
