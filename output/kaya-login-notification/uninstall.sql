-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpkln_login_notification', 'wpkln_kaya_login_notification_admin_notices');

