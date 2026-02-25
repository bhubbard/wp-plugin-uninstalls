-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openexchange-api-settings', 'crypto_widgets_initial_save_version', 'ccpw-install-date', 'cpfm_opt_in_choice_crypto', 'ccpw_old_api', 'ccpw_data_save', 'ccpw-p-id', 'ccpw-shortcode', 'ccpw_api_key_expired', 'ccpw_do_activation_redirect', 'ccpw-type', 'ccpw_activation_time', 'ccpw-alreadyRated', 'ccpw-fresh-installation', 'CCPW_FREE_VERSION', 'ccpw-install-check', 'cmc_usd_conversions', 'cmc-dynamic-links', 'ccpw_options', 'cmc_coingecko_api_hits', 'ccpw_widget_settings', 'ccpw_reset_flag', 'ccpw-saved-coindata', 'ccpw-coins', 'cmc_usd_conversions', 'ccpw_btc_price', 'ccpw_last_check_time');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('type', '_wp_page_template', 'pp_type', 'ticker_position', 'display_currencies_for_table', 'show-coins', 'display_currencies', 'currency', 'enable_formatting', 'ccpw_coinexchangeprice_credits', 'header_ticker_position', 'ticker_speed', 'display_changes', 'back_color', 'font_color', 'custom_css', 'pagination_for_table');
DELETE FROM wp_usermeta WHERE meta_key IN ('type', '_wp_page_template', 'pp_type', 'ticker_position', 'display_currencies_for_table', 'show-coins', 'display_currencies', 'currency', 'enable_formatting', 'ccpw_coinexchangeprice_credits', 'header_ticker_position', 'ticker_speed', 'display_changes', 'back_color', 'font_color', 'custom_css', 'pagination_for_table');
DELETE FROM wp_termmeta WHERE meta_key IN ('type', '_wp_page_template', 'pp_type', 'ticker_position', 'display_currencies_for_table', 'show-coins', 'display_currencies', 'currency', 'enable_formatting', 'ccpw_coinexchangeprice_credits', 'header_ticker_position', 'ticker_speed', 'display_changes', 'back_color', 'font_color', 'custom_css', 'pagination_for_table');
DELETE FROM wp_commentmeta WHERE meta_key IN ('type', '_wp_page_template', 'pp_type', 'ticker_position', 'display_currencies_for_table', 'show-coins', 'display_currencies', 'currency', 'enable_formatting', 'ccpw_coinexchangeprice_credits', 'header_ticker_position', 'ticker_speed', 'display_changes', 'back_color', 'font_color', 'custom_css', 'pagination_for_table');

