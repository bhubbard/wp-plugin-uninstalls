#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_corcrm_payment_settings'
wp option delete 'woocommerce_estimate_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hiecor_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hiecor_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hiecor_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hiecor_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hcv4_page_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hcv4_page_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hcv4_page_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hcv4_page_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bundle_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bundle_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bundle_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bundle_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msrp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msrp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msrp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msrp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hiecor_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hiecor_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hiecor_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hiecor_order_id'"
