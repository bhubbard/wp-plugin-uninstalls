-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccew_initial_save_version', 'ccew-install-date', 'ccew-alreadyRated', 'ccew_activation_time', 'openexchange-api-settings', 'cmc_coingecko_api_hits', 'cpfm_opt_in_choice_crypto', 'ccew-api-settings', 'ccew_data_save', 'ccew_api_key_expired', 'CCEW_FREE_VERSION', 'ccew-fresh-installation', 'cmc_usd_conversions', 'ccew-v', 'ccpw_reset_flag', 'ccew-saved-coindata', 'cmc_usd_conversions', 'ccew_check_coin_list_after_24hour');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

