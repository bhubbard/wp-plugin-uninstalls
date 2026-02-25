-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcc_target_class', 'jcc_exchange_rates_api', 'jcc_currency', 'jcc_exchange_rates', 'jcc_exchange_rates_from');

