-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_version', 'alg_wc_cpp_version', 'alg_wc_cpp_sort_by_converted_price', 'alg_wc_cpp_filter_by_converted_price', 'alg_wc_cpp_enabled', 'alg_wc_cpp_shop_behaviour', 'alg_wc_cpp_cart_checkout', 'alg_wc_cpp_custom_currency_symbol_enabled', 'alg_wc_cpp_custom_currency_symbol_template', 'alg_wc_cpp_fix_mini_cart', 'alg_wc_cpp_currency_reports_enabled', 'alg_wc_cpp_original_price_in_shop_enabled', 'woocommerce_default_catalog_orderby', 'alg_wc_cpp_original_price_in_shop_template', 'woocommerce_currency', 'alg_wc_cpp_by_users_enabled', 'alg_wc_cpp_by_user_roles_enabled', 'alg_wc_cpp_by_product_cats_enabled', 'alg_wc_cpp_by_product_tags_enabled', 'alg_wc_cpp_cart_checkout_leave_one_product', 'alg_wc_cpp_cart_checkout_leave_same_currency', 'alg_wc_cpp_save_products_prices', 'alg_wc_cpp_exchange_rate_update_rate', 'alg_wc_cpp_currency_0', 'alg_wc_cpp_exchange_rate_0', 'alg_wc_cpp_total_number', 'alg_wc_cpp_exchange_rate_update', 'alg_wc_cpp_currency_exchange_rates_server', 'ts_tracker_last_send', 'woocommerce_store_city', 'woocommerce_default_country', 'alg_wc_cpp_currency_exchange_rates_calculate_by_invert', 'alg_wc_cpp_calculate_all_products_prices_cron_time', 'alg_wc_cpp_exchange_rate_cron_time', 'alg_wc_cpp_currency_reports_enabled ', 'alg_wc_cpp__reset', 'alg_wc_cpp_behaviour_reset', 'alg_wc_cpp_currencies_reset', 'alg_wc_cpp_free_currency_converter_api_key', 'alg_wc_cpp_exchange_rates_reset', 'alg_wc_cpp_advanced_reset', 'edd_license_key_cpp', 'edd_license_cpp_hidden_button', 'edd_license_key_cpp_status');
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_users_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_currency_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_user_roles_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_product_cats_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_product_tags_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_cpp_exchange_rate_%';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';
DELETE FROM wp_options WHERE option_name LIKE '%_ts_reset_tracking';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_wc_cpp_currency', '_price', '_wc_booking_cost', 'tx_woocommerce_product_id', '_alg_wc_cpp_converted_price', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_wc_cpp_currency', '_price', '_wc_booking_cost', 'tx_woocommerce_product_id', '_alg_wc_cpp_converted_price', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_wc_cpp_currency', '_price', '_wc_booking_cost', 'tx_woocommerce_product_id', '_alg_wc_cpp_converted_price', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_wc_cpp_currency', '_price', '_wc_booking_cost', 'tx_woocommerce_product_id', '_alg_wc_cpp_converted_price', '_regular_price', '_sale_price');

