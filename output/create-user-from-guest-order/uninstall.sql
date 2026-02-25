-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cufgo_enable', 'cufgo_send_user_notification_email', 'cufgo_settings');

