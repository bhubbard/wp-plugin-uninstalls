-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hesapis_api_key', 'hesapis_modules', 'hesapis_refresh_rate', 'hesapis_cache_time', 'hesapis_language', 'hesapis_currency', 'hesapis_theme', 'hesapis_show_credit', 'hesapis_gold_data', 'hesapis_currency_data', 'hesapis_crypto_data', 'hesapis_market_data');
DELETE FROM wp_options WHERE option_name LIKE 'hesapis_%';
DELETE FROM wp_options WHERE option_name LIKE 'hesapis_refresh_%';

