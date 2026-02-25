-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zaki_push_notification_options', 'zaki_push_notification_fistactivationcheck');

