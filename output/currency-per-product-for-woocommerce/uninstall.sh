#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_cpp_version'
wp option delete 'alg_wc_cpp_sort_by_converted_price'
wp option delete 'alg_wc_cpp_filter_by_converted_price'
wp option delete 'alg_wc_cpp_enabled'
wp option delete 'alg_wc_cpp_shop_behaviour'
wp option delete 'alg_wc_cpp_cart_checkout'
wp option delete 'alg_wc_cpp_custom_currency_symbol_enabled'
wp option delete 'alg_wc_cpp_custom_currency_symbol_template'
wp option delete 'alg_wc_cpp_fix_mini_cart'
wp option delete 'alg_wc_cpp_currency_reports_enabled'
wp option delete 'alg_wc_cpp_original_price_in_shop_enabled'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'alg_wc_cpp_original_price_in_shop_template'
wp option delete 'woocommerce_currency'
wp option delete 'alg_wc_cpp_by_users_enabled'
wp option delete 'alg_wc_cpp_by_user_roles_enabled'
wp option delete 'alg_wc_cpp_by_product_cats_enabled'
wp option delete 'alg_wc_cpp_by_product_tags_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_users_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_currency_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_user_roles_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_product_cats_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_product_tags_%'"
wp option delete 'alg_wc_cpp_cart_checkout_leave_one_product'
wp option delete 'alg_wc_cpp_cart_checkout_leave_same_currency'
wp option delete 'alg_wc_cpp_save_products_prices'
wp option delete 'alg_wc_cpp_exchange_rate_update_rate'
wp option delete 'alg_wc_cpp_currency_0'
wp option delete 'alg_wc_cpp_exchange_rate_0'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_exchange_rate_%'"
wp option delete 'alg_wc_cpp_total_number'
wp option delete 'alg_wc_cpp_exchange_rate_update'
wp option delete 'alg_wc_cpp_currency_exchange_rates_server'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'alg_wc_cpp_currency_exchange_rates_calculate_by_invert'
wp option delete 'alg_wc_cpp_calculate_all_products_prices_cron_time'
wp option delete 'alg_wc_cpp_exchange_rate_cron_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ts_reset_tracking'"
wp option delete 'alg_wc_cpp_currency_reports_enabled '
wp option delete 'alg_wc_cpp__reset'
wp option delete 'alg_wc_cpp_behaviour_reset'
wp option delete 'alg_wc_cpp_currencies_reset'
wp option delete 'alg_wc_cpp_free_currency_converter_api_key'
wp option delete 'alg_wc_cpp_exchange_rates_reset'
wp option delete 'alg_wc_cpp_advanced_reset'
wp option delete 'edd_license_key_cpp'
wp option delete 'edd_license_cpp_hidden_button'
wp option delete 'edd_license_key_cpp_status'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cpp_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cpp_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cpp_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cpp_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_booking_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_booking_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_booking_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_booking_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tx_woocommerce_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cpp_converted_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cpp_converted_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cpp_converted_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cpp_converted_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
