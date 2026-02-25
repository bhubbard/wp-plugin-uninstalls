#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'purolator_small_db_version'
wp option delete 'EN_Plugins'
wp option delete 'purolator_small_web_hook_plan_requests'
wp option delete 'purolator_small_package'
wp option delete 'purolator_small_quotes_store_type'
wp option delete 'purolator_small_package_expire_days'
wp option delete 'purolator_small_package_expire_date'
wp option delete 'en_fdo_company_id'
wp option delete 'en_fdo_company_id_status'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'purolator_small_orderCutoffTime'
wp option delete 'purolator_small_licence_key'
wp option delete 'en_orders_ids_flag'
wp option delete 'en_async_orders_exporting_process'
wp option delete 'en_orders_ids'
wp option delete 'woocommerce_currency'
wp option delete 'allow_other_plugins_purolator_small'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'purolator_small_quote_as_residential_delivery'
wp option delete 'purolator_small_delivery_estimates'
wp option delete 'purolator_small_shipmentOffsetDays'
wp option delete 'purolator_small_packaging_method'
wp option delete 'purolator_small_pro_key'
wp option delete 'purolator_small_pro_key_pass'
wp option delete 'purolator_small_registered_account_number'
wp option delete 'purolator_small_billing_account_number'
wp option delete 'box_sizing_optimization_mode'
wp option delete 'eniture_plugin_16'
wp option delete 'all_shipment_days_purolator_small'
wp option delete 'monday_shipment_day_purolator_small'
wp option delete 'tuesday_shipment_day_purolator_small'
wp option delete 'wednesday_shipment_day_purolator_small'
wp option delete 'thursday_shipment_day_purolator_small'
wp option delete 'friday_shipment_day_purolator_small'
wp option delete 'purolator_small_hand_fee_mark_up'
wp option delete 'purolator_small_hazardous_fee'
wp option delete 'ups_small_hazardous_materials_shipments'
wp option delete 'ups_small_quote_as_residential_delivery'
wp option delete 'purolator_small_express_9'
wp option delete 'purolator_small_express_9_markup'
wp option delete 'purolator_small_express_10'
wp option delete 'purolator_small_express_10_markup'
wp option delete 'purolator_small_express'
wp option delete 'purolator_small_express_markup'
wp option delete 'purolator_small_ground'
wp option delete 'purolator_small_ground_markup'
wp option delete 'purolator_small_ground_us'
wp option delete 'purolator_small_ground_us_markup'
wp option delete 'purolator_small_express_us'
wp option delete 'purolator_small_express_us_markup'
wp option delete 'purolator_small_express_us_10am'
wp option delete 'purolator_small_express_us_10am_markup'
wp option delete 'purolator_small_express_us_9am'
wp option delete 'purolator_small_express_us_9am_markup'
wp option delete 'purolator_small_express_inter'
wp option delete 'purolator_small_express_inter_markup'
wp option delete 'purolator_small_ground_90'
wp option delete 'purolator_small_ground_90_markup'
wp option delete 'purolator_small_ground_100'
wp option delete 'purolator_small_ground_100_markup'
wp option delete 'wc_pulish_negotiate_purolator_small'
wp option delete 'en_ignore_items_through_freight_classification'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'shipping_methods_do_not_sort_by_price'
wp option delete 'woocommerce_version'
wp option delete 'wc_pervent_proceed_checkout_purolator_small'
wp option delete 'prevent_proceed_checkout_purolator_small'
wp option delete 'allow_proceed_checkout_purolator_small'
wp option delete 'purolator_small_enable_logs'
wp option delete 'purolator_small_packaging_type'
wp option delete 'en_purolator_small_update_now'
wp option delete 'wc_pervent_proceed_checkout_eniture'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'
wp option delete 'en_old_user_hazmat_status'
wp option delete 'restrict_days_transit_package_purolator_small'
wp option delete 'restrict_calendar_transit_small_packages_purolator'

# Clear Cron Jobs
wp cron event delete 'en_async_orders_exporting_process'

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_multiple_packages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_en_insurance_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_en_insurance_fee'"
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
