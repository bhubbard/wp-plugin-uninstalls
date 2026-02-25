#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'a2z_dhl_main_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_values_%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'a2z_dhl_ex_rate%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_pickup_values_%'"
wp option delete 'hit_multi_vendor'
wp option delete 'a2z_dhl_express_working_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_return_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_order_rates_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hit_dhl_return_status_%'"
wp option delete 'a2z_dhl_ex_rate'

# Delete Transients
wp transient delete 'hitshipo_dhl_express_nonce_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dhl_cc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dhl_cc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dhl_cc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dhl_cc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dhl_cc_inb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dhl_cc_inb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dhl_cc_inb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dhl_cc_inb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dhl_export_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dhl_export_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dhl_export_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dhl_export_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dhl_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dhl_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dhl_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dhl_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dhl_danger_good_content_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dhl_danger_good_content_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dhl_danger_good_content_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dhl_danger_good_content_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dhl_danger_good_label_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dhl_danger_good_label_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dhl_danger_good_label_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dhl_danger_good_label_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hits_dhl_danger_good_un_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hits_dhl_danger_good_un_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hits_dhl_danger_good_un_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hits_dhl_danger_good_un_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hit_dhl_prod_variation_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hit_dhl_prod_variation_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hit_dhl_prod_variation_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hit_dhl_prod_variation_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dhl_express_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dhl_express_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dhl_express_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dhl_express_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a2z_dhl_vendor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a2z_dhl_vendor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a2z_dhl_vendor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a2z_dhl_vendor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipi_label_requested'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipi_label_requested'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipi_label_requested'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipi_label_requested'"
