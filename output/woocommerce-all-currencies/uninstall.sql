-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_all_currencies_enabled', 'alg_wc_all_currencies_custom_currencies_enabled', 'alg_wc_all_currencies_custom_currencies_codes', 'alg_wc_all_currencies_custom_currencies_names', 'alg_wc_all_currencies_hide_symbol', 'alg_wc_all_currencies_use_code_as_symbol', 'alg_wc_all_currencies_list_country_enabled', 'alg_wc_all_currencies_list_crypto_enabled', 'alg_wc_all_currencies_custom_currencies_total', 'active_sitewide_plugins', 'alg_wc_all_currencies_version', 'alg_wc_all_currencies_symbols');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_currencies_pro_currency_%';

