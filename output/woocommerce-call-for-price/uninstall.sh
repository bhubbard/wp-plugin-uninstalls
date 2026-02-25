#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_num_decimals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset_usage_tracking'"
wp option delete 'cfp_lite_allow_tracking'
wp option delete 'alg_wc_call_for_price_version'
wp option delete 'alg_wc_call_for_price_hide_main_variable_price'
wp option delete 'alg_wc_call_for_price_enabled'
wp option delete 'alg_call_for_price_enable_cfp_for_zero_price'
wp option delete 'alg_call_for_price_enable_stock_for_empty_price'
wp option delete 'alg_call_for_price_change_button_text'
wp option delete 'alg_call_for_price_button_text'
wp option delete 'alg_call_for_price_hide_button'
wp option delete 'alg_wc_call_for_price_hide_variations_add_to_cart_button'
wp option delete 'alg_call_for_price_make_all_empty'
wp option delete 'alg_call_for_price_make_empty_price_per_taxonomy'
wp option delete 'alg_call_for_price_make_empty_price_product_cat'
wp option delete 'alg_call_for_price_make_empty_price_product_tag'
wp option delete 'alg_call_for_price_make_empty_price_by_product_price'
wp option delete 'alg_call_for_price_make_empty_price_min_price'
wp option delete 'alg_call_for_price_make_empty_price_max_price'
wp option delete 'alg_wc_call_for_price_hide_sale_sign'
wp option delete 'alg_wc_call_for_price_force_variation_price'
wp option delete 'alg_call_for_price_enable_cfp_text_for_all_products'
wp option delete 'alg_call_for_price_button_url'
wp option delete 'alg_call_for_price_make_empty_price_per_user_roles'
wp option delete 'alg_wc_call_for_price_simple_enabled'
wp option delete 'alg_wc_call_for_price_simple_single_enabled'
wp option delete 'alg_wc_call_for_price_text_simple_single'
wp option delete 'alg_wc_call_for_price_simple_related_enabled'
wp option delete 'alg_wc_call_for_price_simple_home_enabled'
wp option delete 'alg_wc_call_for_price_simple_page_enabled'
wp option delete 'alg_wc_call_for_price_simple_archive_enabled'
wp option delete 'alg_wc_call_for_price_variable_enabled'
wp option delete 'alg_wc_call_for_price_variable_single_enabled'
wp option delete 'alg_wc_call_for_price_text_variable_single'
wp option delete 'alg_wc_call_for_price_variable_related_enabled'
wp option delete 'alg_wc_call_for_price_variable_home_enabled'
wp option delete 'alg_wc_call_for_price_variable_page_enabled'
wp option delete 'alg_wc_call_for_price_variable_archive_enabled'
wp option delete 'alg_wc_call_for_price_text_variable_archive'
wp option delete 'alg_wc_call_for_price_variable_variation_enabled'
wp option delete 'alg_wc_call_for_price_grouped_enabled'
wp option delete 'alg_wc_call_for_price_grouped_single_enabled'
wp option delete 'alg_wc_call_for_price_text_grouped_single'
wp option delete 'alg_wc_call_for_price_grouped_related_enabled'
wp option delete 'alg_wc_call_for_price_grouped_home_enabled'
wp option delete 'alg_wc_call_for_price_grouped_page_enabled'
wp option delete 'alg_wc_call_for_price_grouped_archive_enabled'
wp option delete 'alg_wc_call_for_price_external_enabled'
wp option delete 'alg_wc_call_for_price_external_single_enabled'
wp option delete 'alg_wc_call_for_price_text_external_single'
wp option delete 'alg_wc_call_for_price_external_related_enabled'
wp option delete 'alg_wc_call_for_price_external_home_enabled'
wp option delete 'alg_wc_call_for_price_external_page_enabled'
wp option delete 'alg_wc_call_for_price_external_archive_enabled'
wp option delete 'woocommerce_version'
wp option delete 'alg_call_for_price_make_out_of_stock_empty_price'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_call_for_price_make_empty_price_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_call_for_price_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_call_for_price_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_call_for_price_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_call_for_price_enabled'"
