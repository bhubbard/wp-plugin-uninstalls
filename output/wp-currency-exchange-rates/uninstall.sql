-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_cer_rates', 'alg_cer_server', 'alg_cer_server_api_key_fixer', 'alg_cer_cron_data', 'alg_cer_update_period', 'alg_currency_exchange_rates_version');

