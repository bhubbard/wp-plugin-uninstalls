-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sendlime_installed', 'sendlime_version', 'sendlime_wc_order_notification_settings');

