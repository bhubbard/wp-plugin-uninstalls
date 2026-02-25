-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stock_notification_threshold', 'stock_notification_email_templates', 'stock_availability_alert_installed', 'stock_availability_alert_version');

