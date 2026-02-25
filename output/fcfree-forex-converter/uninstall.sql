-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FCFree_exchange_rate_api_key', 'FCFree_currency_api_key_2', 'FCFree_currency_api_key_3', 'FCFree_currency_api_key_4', 'FCFree_active_api');

