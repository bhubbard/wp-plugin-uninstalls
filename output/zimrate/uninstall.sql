-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zimrate-prefer', 'zimrate-interval', 'zimrate-cushion', 'zimrate-currencies', 'zimrate-analytics', 'alg_currency_switcher_exchange_rate_offset', 'zimrate-backup', 'zimrate');
DELETE FROM wp_options WHERE option_name LIKE '%_USD';
DELETE FROM wp_options WHERE option_name LIKE '%-backup';
DELETE FROM wp_options WHERE option_name LIKE 'zimrate-%';

