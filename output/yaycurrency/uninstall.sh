#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yay_currency_orders_synced_to_base'
wp option delete 'yay_currency_show_flag_in_menu_item'
wp option delete 'yay_currency_show_currency_name_in_menu_item'
wp option delete 'yay_currency_show_currency_symbol_in_menu_item'
wp option delete 'yay_currency_show_currency_code_in_menu_item'
wp option delete 'yay_currency_menu_item_size'
wp option delete 'yay_currency_show_flag_in_widget'
wp option delete 'yay_currency_show_currency_name_in_widget'
wp option delete 'yay_currency_show_currency_symbol_in_widget'
wp option delete 'yay_currency_show_currency_code_in_widget'
wp option delete 'yay_currency_widget_size'
wp option delete 'isShowRecommendations'
wp option delete 'yaycurrency_reviewed'
wp option delete 'wapf_settings_show_in_cart'
wp option delete 'wapf_settings_show_in_checkout'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'bm_fallback_customer_group'
wp option delete 'bm_bulk_price_discount_message'
wp option delete 'book_price-label'
wp option delete 'hp_booking_enable_quantity'
wp option delete 'hp_listing_allow_price_extras'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'csp_price_text'
wp option delete 'yay_currency_checkout_different_currency'
wp option delete 'tier_pricing_table_lowest_prefix'
wp option delete 'tier_pricing_table_tiered_price_at_catalog_type'
wp option delete 'cron_projects'
wp option delete 'channel_project'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woo_payment_discounts_setting'
wp option delete 'ywpar_rewards_percentual_conversion_rate'
wp option delete 'ywpar_rewards_conversion_rate'
wp option delete 'ywpar_earn_points_conversion_rate'
wp option delete 'ywsbs_total_subscription_length_text'
wp option delete 'yay_currency_show_flag_in_switcher'
wp option delete 'yay_currency_show_currency_name_in_switcher'
wp option delete 'yay_currency_show_currency_symbol_in_switcher'
wp option delete 'yay_currency_show_currency_code_in_switcher'
wp option delete 'yay_currency_switcher_size'
wp option delete 'yay_currency_show_single_product_page'
wp option delete 'yay_currency_switcher_position_on_single_product_page'
wp option delete 'yay_currency_show_menu'
wp option delete 'yay_currency_polylang_compatible'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_currency'
wp option delete 'yay_currency_currency_unit_type'
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yay_currency_order_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yay_currency_order_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yay_currency_order_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yay_currency_order_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2bking_account_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2bking_account_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2bking_account_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2bking_account_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2bking_account_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2bking_account_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2bking_account_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2bking_account_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2bking_b2buser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_regular_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'b2bking_sale_product_price_group_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_group_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_group_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_group_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_group_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_group_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_group_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_group_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_group_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_bulk_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_bulk_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_bulk_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_bulk_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_bulk_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_bulk_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_bulk_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_bulk_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokan_wholesale_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokan_wholesale_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokan_wholesale_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokan_wholesale_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_funnel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_contents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yay_currency_order_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yay_currency_order_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yay_currency_order_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yay_currency_order_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currency_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thousand_separator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thousand_separator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thousand_separator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thousand_separator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'decimal_separator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'decimal_separator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'decimal_separator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'decimal_separator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'number_decimal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'number_decimal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'number_decimal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'number_decimal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rate_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rate_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rate_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rate_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocs_order_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcpay_multi_currency_order_default_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcpay_multi_currency_order_default_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcpay_multi_currency_order_default_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcpay_multi_currency_order_default_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmc_order_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yay_currency_checkout_original_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yay_currency_checkout_original_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yay_currency_checkout_original_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yay_currency_checkout_original_total'"
