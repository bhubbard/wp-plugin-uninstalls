-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bindusms_installed', 'bindusms_version', 'bindusms_wc_order_notification_settings');

