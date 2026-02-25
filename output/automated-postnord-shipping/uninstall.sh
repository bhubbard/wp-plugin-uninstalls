#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'hitshipo_pn_working_status'
wp option delete 'hitshipo_pn_main_settings'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hitshipo_pn_ex_rate%'"
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_pn_values_%'"
wp option delete 'hit_multi_vendor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_pn_status_%'"

# Delete Transients
wp transient delete 'hitshipo_pn_nonce_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pn_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pn_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pn_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pn_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hitshipo_pn_vendor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hitshipo_pn_vendor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hitshipo_pn_vendor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hitshipo_pn_vendor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_pn_hs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_pn_hs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_pn_hs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_pn_hs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_pn_country_of_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_pn_country_of_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_pn_country_of_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_pn_country_of_origin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_pn_product_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_pn_product_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_pn_product_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_pn_product_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_pn_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_pn_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_pn_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_pn_cc'"
