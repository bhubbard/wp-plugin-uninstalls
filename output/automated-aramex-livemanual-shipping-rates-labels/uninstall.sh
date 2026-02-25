#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'a2z_aramex_main_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_aramex_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_aramex_pickup_values_%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'a2z_aramex_ex_rate%'"
wp option delete 'hit_multi_vendor'
wp option delete 'a2z_aramex_express_working_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_aramex_status_%'"

# Delete Transients
wp transient delete 'hitshipo_aramex_express_nonce_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_aramex_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_aramex_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_aramex_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_aramex_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2z_aramex_vendor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2z_aramex_vendor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2z_aramex_vendor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2z_aramex_vendor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aramex_express_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aramex_express_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aramex_express_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aramex_express_address'"
