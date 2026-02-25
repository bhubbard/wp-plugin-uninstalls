-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcn_settings', 'wcn_is_notification_sent', 'wcn_admin_notification');

