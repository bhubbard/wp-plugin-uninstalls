-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aisp_order-tracking-notification_cleanup_on_uninstall', 'aisp_order-tracking-notification_api_key', 'aisp_order-tracking-notification_pickup_methods');

