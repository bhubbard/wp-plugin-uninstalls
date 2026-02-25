#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hit_cp_auto_working_status'
wp option delete 'hit_cp_auto_main_settings'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_cp_auto_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_cp_auto_status_%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'hit_canadapost_auto_nonce_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_cp_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_cp_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_cp_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_cp_hs_code'"
