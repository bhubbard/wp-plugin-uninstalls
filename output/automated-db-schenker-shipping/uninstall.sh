#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hits_dbs_main_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hits_dbs_ex_rate%'"
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hits_dbs_values_%'"
wp option delete 'hit_multi_vendor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hits_dbs_status_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dbs_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dbs_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dbs_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dbs_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dbs_vendor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dbs_vendor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dbs_vendor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dbs_vendor_settings'"
