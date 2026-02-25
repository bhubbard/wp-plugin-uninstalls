-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_key', 'base_currency', 'schedule_time', 'exchange_rate_quota');

