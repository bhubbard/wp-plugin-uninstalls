-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('datika_exchange_rates', 'datika_fixer_api_key');

