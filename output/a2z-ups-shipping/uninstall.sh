#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'hit_ups_auto_main_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_values_%'"
wp option delete 'hit_multi_vendor'
wp option delete 'hitshipo_ups_working_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_return_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_ups_auto_return_status_%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'hitshipo_ups_rest_auth_token_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hitshipo_ups_rest_auth_token_%' OR option_name LIKE '_site_transient_hitshipo_ups_rest_auth_token_%'"
wp transient delete 'hitshipo_ups_nonce_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hit_ups_auto_vendor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hit_ups_auto_vendor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hit_ups_auto_vendor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hit_ups_auto_vendor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hit_ups_auto_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hit_ups_auto_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hit_ups_auto_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hit_ups_auto_address'"
