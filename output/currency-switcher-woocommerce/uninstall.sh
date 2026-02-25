#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_currency_switcher_version'
wp option delete 'alg_currency_switcher_per_product_enabled'
wp option delete 'alg_currency_switcher_fixed_coupons_base_currency_enabled'
wp option delete 'alg_wc_currency_switcher_enabled'
wp option delete 'alg_currency_switcher_exchange_rate_update'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_currency_switcher_currency_countries_%'"
wp option delete 'woocommerce_default_customer_address'
wp option delete 'wpwham_currency_switcher_version'
wp option delete 'alg_wc_currency_switcher_currency_countries_as_text_enabled'
wp option delete 'alg_currency_switcher_total_number'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_currency_switcher_currency_%'"
wp option delete 'alg_currency_switcher_currency_shop_default'
wp option delete 'alg_currency_switcher_exchange_rate_cron_time'
wp option delete 'alg_currency_switcher_exchange_rate_server'
wp option delete 'alg_currency_switcher_exchange_rate_offset'
wp option delete 'woocommerce_price_num_decimals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_currency_locales_%'"
wp option delete 'alg_wc_currency_switcher_currency_locales_as_text_enabled'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'woocommerce_version'
wp option delete 'wpw_currency_switcher_price_filter_widget_enabled'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'alg_wc_currency_switcher_currency_locales_enabled'
wp option delete 'alg_wc_currency_switcher_currency_locales_use_always_enabled'
wp option delete 'alg_currency_switcher_fix_mini_cart'
wp option delete 'alg_wc_currency_switcher_order_admin_currency'
wp option delete 'alg_wc_currency_switcher_order_admin_format'
wp option delete 'alg_currency_switcher_disable_uri'
wp option delete 'alg_wc_currency_switcher_price_formats_enabled'
wp option delete 'alg_currency_switcher_fixed_amount_coupons_enabled'
wp option delete 'wpw_currency_switcher_shipping_enabled'
wp option delete 'alg_currency_switcher_free_shipping_min_amount_enabled'
wp option delete 'alg_currency_switcher_cart_fees_enabled'
wp option delete 'alg_currency_switcher_placement'
wp option delete 'alg_currency_switcher_js_reposition_enabled'
wp option delete 'alg_wc_currency_switcher_flags_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_currency_code_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_currency_code_pos_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_currency_position_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_decimal_separator_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_thousand_separator_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_price_formats_number_of_decimals_%'"
wp option delete 'alg_currency_switcher_rounding'
wp option delete 'alg_currency_switcher_rounding_precision'
wp option delete 'alg_currency_switcher_make_pretty_price'
wp option delete 'alg_currency_switcher_default_currency_enabled'
wp option delete 'alg_currency_switcher_revert'
wp option delete 'alg_currency_switcher_apply_rounding_and_pretty_to_shipping'
wp option delete 'wpwham_currency_switcher_dbversion'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_currency_switcher_flags_%'"
wp option delete 'wpw_cs_fcc_api_key'
wp option delete 'wpw_currency_switcher_coinmarketcap_api_key'
wp option delete 'wpw_currency_switcher_currencyapi_api_key'
wp option delete 'alg_wc_currency_switcher_session_save_path'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_currency_switcher_currency_enabled_%'"
wp option delete 'alg_wc_currency_switcher_currency_countries_override'
wp option delete 'alg_wc_currency_switcher_currency_countries_enabled'
wp option delete 'woocommerce_default_country'
wp option delete 'alg_wc_currency_switcher_price_conversion_method'
wp option delete 'alg_currency_switcher_additional_price_filters'
wp option delete 'alg_currency_switcher_price_filters_to_remove'
wp option delete 'alg_currency_switcher_format'
wp option delete 'alg_currency_switcher_wrapper'
wp option delete 'alg_wc_currency_switcher_link_list_separator'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_currency_switcher_per_product_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_currency_switcher_per_product_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_currency_switcher_per_product_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_currency_switcher_per_product_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
