-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linktrade_notification_email', 'linktrade_email_notifications', 'linktrade_reminder_days', 'linktrade_language', 'linktrade_version', 'linktrade_install_date', 'linktrade_batch_size', 'linktrade_request_delay');

