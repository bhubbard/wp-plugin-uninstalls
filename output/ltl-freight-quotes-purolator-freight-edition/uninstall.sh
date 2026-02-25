#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abf_db_version'
wp option delete 'EN_Plugins'
wp option delete 'purolator_ltl_quotes_web_hook_plan_requests'
wp option delete 'purolater_ltl_packages_quotes_package'
wp option delete 'purolater_quotes_store_type'
wp option delete 'purolater_ltl_package_expire_days'
wp option delete 'purolater_ltl_package_expire_date'
wp option delete 'purolator_ltl_always_include_residential'
wp option delete 'purolator_ltl_always_tailgate'
wp option delete 'purolator_ltl_plugin_licence_key'
wp option delete 'allow_proceed_checkout_eniture'
wp option delete 'prevent_proceed_checkout_eniture'
wp option delete 'en_purolator_ltl_update_now'
wp option delete 'en_old_user_dropship_status'
wp option delete 'en_old_user_warehouse_status'
wp option delete 'en_plugins_return_LTL_quotes'
wp option delete 'en_suppress_parcel_rates'
wp option delete 'woocommerce_currency'
wp option delete 'purolator_ltl_allow_other_plugins'
wp option delete 'purolator_ltl_option_tailgate'
wp option delete 'purolator_ltl_option_residential'
wp option delete 'purolator_ltl_setting_acccess_level'
wp option delete 'service_purolator_ltl_stndrd_quotes'
wp option delete 'service_purolator_ltl_expedited_quotes'
wp option delete 'purolator_ltl_production_password'
wp option delete 'purolator_ltl_reg_acc_num'
wp option delete 'purolator_ltl_production_key'
wp option delete 'handling_weight_purolator_ltl'
wp option delete 'maximum_handling_weight_purolator_ltl'
wp option delete 'eniture_plugin_6'
wp option delete 'en_weight_threshold_lfq'
wp option delete 'purolator_ltl_handling_fee'
wp option delete 'purolator_ltl_delivey_estimate'
wp option delete 'purolator_ltl_label_as_stndrd'
wp option delete 'purolator_ltl_label_as_expedited'
wp option delete 'woocommerce_version'
wp option delete 'enable_logs_purolator_ltl'

# Direct DB Queries (Fallback)
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
