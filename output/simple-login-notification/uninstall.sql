-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_login_notification_options', 'simple-login-notification-dismiss-notice');

