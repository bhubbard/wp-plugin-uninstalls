-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('realhomes_currencies_last_update', 'rcs_settings', 'realhomes_currencies_rates', 'realhomes_currencies_data', 'theme_currency_sign');

