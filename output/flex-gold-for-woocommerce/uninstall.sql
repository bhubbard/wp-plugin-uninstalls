-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dg_capital_plugin_id', 'dg_capital_plugin_method_title', 'dg_capital_plugin_what_is_url', 'teams', 'wallets', 'gold_price');
DELETE FROM wp_options WHERE option_name LIKE 'dg_capital_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE '%_international_fee';
DELETE FROM wp_options WHERE option_name LIKE '%_service_fee';
DELETE FROM wp_options WHERE option_name LIKE '%_percent_fee';

