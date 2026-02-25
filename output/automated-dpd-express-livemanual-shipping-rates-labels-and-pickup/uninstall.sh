#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'a2z_dpd_main_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_values_%'"
wp option delete 'hit_multi_vendor'
wp option delete 'a2z_dpd_express_working_status'
wp option delete 'a2z_usps_main_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_pickup_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_return_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dpd_return_status_%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'a2z_dpd_ex_rate%'"

# Delete Transients
wp transient delete 'hitshipo_dpd_express_nonce_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dpd_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dpd_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dpd_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dpd_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2z_dpd_vendor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2z_dpd_vendor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2z_dpd_vendor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2z_dpd_vendor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_express_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_express_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_express_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_express_address'"
