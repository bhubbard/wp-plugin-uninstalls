-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contlo_connect_token', 'contlo_api_key', 'store_public_key', 'logs_enabled', 'event_tracking_enabled');

