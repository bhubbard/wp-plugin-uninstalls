-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trendyol_sync', 'trendyol_id', 'trendyol_api_key', 'trendyol_api_secret', 'trendyol_order_sync_interval');

