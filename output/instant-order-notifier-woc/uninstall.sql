-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpc_last_order_time', 'wpc_last_order_id', 'wpc_notification_settings', 'wpc_last_seen_order_id');

