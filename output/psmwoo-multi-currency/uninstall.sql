-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psmfr_settings', 'psmfr_current_version', 'psmwmc-licenses', 'psmwoo_mc_currencies', 'woocommerce_date_type', 'woocommerce_currency', 'psmmc-string-translation', 'psmwoo_mc_checkout_currencies', 'psmwoo_mc_checkout_options', 'psmwoo_mc_advanced_settings', 'psmwoo_mc_display_options', 'psmwoo_mc_auto_select_country_currencies', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'psmwoo_mc_current_version', 'psmfr_installing', 'product-transient-version', 'psmwoo_mc_installing');

