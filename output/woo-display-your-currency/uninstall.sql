-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brijesh_currency_symbol', 'brijesh_exchange_rate');

