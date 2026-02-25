#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_woocommerce_checkout_fees_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_enabled_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_min_cart_amount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_max_cart_amount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_min_fee_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_max_fee_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_min_fee_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_max_fee_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_coupons_rule_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_coupons_rule_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_text_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_value_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_text_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_value_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_type_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_round_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_round_precision_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_is_taxable_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_tax_class_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_exclude_shipping_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_add_taxes_%'"
wp option delete 'alg_woocommerce_checkout_fees_per_product_add_product_name'
wp option delete 'woocommerce_version'
wp option delete 'alg_woocommerce_checkout_fees_info_enabled'
wp option delete 'alg_woocommerce_checkout_fees_info_hook'
wp option delete 'alg_woocommerce_checkout_fees_info_hook_priority'
wp option delete 'alg_woocommerce_checkout_fees_lowest_price_info_enabled'
wp option delete 'alg_woocommerce_checkout_fees_lowest_price_info_hook'
wp option delete 'alg_woocommerce_checkout_fees_lowest_price_info_hook_priority'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'alg_woocommerce_checkout_fees_per_product_enabled'
wp option delete 'alg_woocommerce_checkout_fees_variable_info'
wp option delete 'alg_woocommerce_checkout_fees_info_row_template'
wp option delete 'alg_woocommerce_checkout_fees_info_start_template'
wp option delete 'alg_woocommerce_checkout_fees_info_end_template'
wp option delete 'alg_woocommerce_checkout_fees_lowest_price_info_template'
wp option delete 'alg_woocommerce_checkout_fees_enabled'
wp option delete 'woocommerce_currency'
wp option delete 'alg_woocommerce_checkout_fees_merge_all_fees'
wp option delete 'alg_woocommerce_checkout_fees_range_max_total_discounts'
wp option delete 'alg_woocommerce_checkout_fees_range_max_total_fees'
wp option delete 'woocommerce_default_gateway'
wp option delete 'alg_woocommerce_checkout_fees_hide_on_cart'
wp option delete 'alg_woocommerce_checkout_fees_global_fee_enabled'
wp option delete 'alg_woocommerce_checkout_fees_global_fee_as_extra_enabled'
wp option delete 'alg_woocommerce_checkout_fees_global_fee_gateways_excl'
wp option delete 'alg_woocommerce_checkout_fees_global_fee_title'
wp option delete 'alg_woocommerce_checkout_fees_global_fee_value'
wp option delete 'alg_woocommerce_checkout_fees_global_fee_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_cats_include_fee_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_cats_exclude_fee_2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_cats_include_calc_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_gateways_fees_cats_exclude_calc_type_%'"
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'wc_deposits_fees_handling'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_enabled_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_enabled_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_enabled_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_enabled_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_min_cart_amount_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_min_cart_amount_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_min_cart_amount_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_min_cart_amount_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_max_cart_amount_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_max_cart_amount_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_max_cart_amount_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_max_cart_amount_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_min_fee_2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_max_fee_2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_coupons_rule_2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_value_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_value_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_value_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_value_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_type_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_type_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_type_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_type_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_title_2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_title_2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_title_2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_title_2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_value_2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_value_2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_value_2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_value_2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_type_2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_type_2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_type_2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_type_2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_enabled_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_enabled_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_enabled_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_enabled_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_precision_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_precision_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_precision_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_rounding_precision_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_tax_enabled_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_tax_enabled_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_tax_enabled_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_tax_enabled_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_tax_class_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_tax_class_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_tax_class_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_tax_class_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_exclude_shipping_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_exclude_shipping_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_exclude_shipping_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_exclude_shipping_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_add_taxes_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_add_taxes_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_add_taxes_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_add_taxes_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_percent_usage_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_percent_usage_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_percent_usage_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_percent_usage_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_checkout_fees_fixed_usage_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_checkout_fees_fixed_usage_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_checkout_fees_fixed_usage_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_checkout_fees_fixed_usage_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
